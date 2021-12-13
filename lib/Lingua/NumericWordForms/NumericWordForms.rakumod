unit module Lingua::NumericWordForms;

use Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::English::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::French::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Greek::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Japanese::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Persian::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Polish::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Russian::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Spanish::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Ukrainian::WordedNumberSpec;

use Lingua::NumericWordForms::Actions::Bulgarian::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::English::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::French::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Greek::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Japanese::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Persian::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Polish::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Russian::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Spanish::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Ukrainian::WordedNumberSpec;

#===========================================================
# Parsing
#===========================================================
my %langToAction =
    "bulgarian"      => Lingua::NumericWordForms::Actions::Bulgarian::WordedNumberSpec,
    "english"        => Lingua::NumericWordForms::Actions::English::WordedNumberSpec,
    "french"         => Lingua::NumericWordForms::Actions::French::WordedNumberSpec,
    "greek"          => Lingua::NumericWordForms::Actions::Greek::WordedNumberSpec,
    "japanese"       => Lingua::NumericWordForms::Actions::Japanese::WordedNumberSpec,
    "persian"        => Lingua::NumericWordForms::Actions::Persian::WordedNumberSpec,
    "polish"         => Lingua::NumericWordForms::Actions::Polish::WordedNumberSpec,
    "russian"        => Lingua::NumericWordForms::Actions::Russian::WordedNumberSpec,
    "spanish"        => Lingua::NumericWordForms::Actions::Spanish::WordedNumberSpec,
    "ukrainian"      => Lingua::NumericWordForms::Actions::Ukrainian::WordedNumberSpec;


my %langToActionExtended =
    "español"        => Lingua::NumericWordForms::Actions::Spanish::WordedNumberSpec,
    "français"       => Lingua::NumericWordForms::Actions::French::WordedNumberSpec,
    "ελληνικά"       => Lingua::NumericWordForms::Actions::Greek::WordedNumberSpec,
    "български"      => Lingua::NumericWordForms::Actions::Bulgarian::WordedNumberSpec,
    "polski"         => Lingua::NumericWordForms::Actions::Polish::WordedNumberSpec,
    "руский"         => Lingua::NumericWordForms::Actions::Russian::WordedNumberSpec,
    "український"    => Lingua::NumericWordForms::Actions::Ukrainian::WordedNumberSpec,
    "日本語"          => Lingua::NumericWordForms::Actions::Japanese::WordedNumberSpec;


%langToAction = %langToAction , %langToActionExtended;

my %langToRole =
    "bulgarian"      => Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec,
    "english"        => Lingua::NumericWordForms::Roles::English::WordedNumberSpec,
    "french"         => Lingua::NumericWordForms::Roles::French::WordedNumberSpec,
    "greek"          => Lingua::NumericWordForms::Roles::Greek::WordedNumberSpec,
    "japanese"       => Lingua::NumericWordForms::Roles::Japanese::WordedNumberSpec,
    "persian"        => Lingua::NumericWordForms::Roles::Persian::WordedNumberSpec,
    "polish"         => Lingua::NumericWordForms::Roles::Polish::WordedNumberSpec,
    "russian"        => Lingua::NumericWordForms::Roles::Russian::WordedNumberSpec,
    "spanish"        => Lingua::NumericWordForms::Roles::Spanish::WordedNumberSpec,
    "ukrainian"      => Lingua::NumericWordForms::Roles::Ukrainian::WordedNumberSpec;

my %langToRoleExtended =
    "español"        => Lingua::NumericWordForms::Roles::Spanish::WordedNumberSpec,
    "français"       => Lingua::NumericWordForms::Roles::French::WordedNumberSpec,
    "ελληνικά"       => Lingua::NumericWordForms::Roles::Greek::WordedNumberSpec,
    "български"      => Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec,
    "polski"         => Lingua::NumericWordForms::Roles::Polish::WordedNumberSpec,
    "руский"         => Lingua::NumericWordForms::Roles::Russian::WordedNumberSpec,
    "український"    => Lingua::NumericWordForms::Roles::Ukrainian::WordedNumberSpec,
    "日本語"          => Lingua::NumericWordForms::Roles::Japanese::WordedNumberSpec;

%langToRole = %langToRole , %langToRoleExtended;

#-----------------------------------------------------------
grammar WordFormParser
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {
        rule TOP { <numeric-word-form> }
    }

#-----------------------------------------------------------
sub has-semicolon (Str $word) {
    return defined index $word, ';';
}

#-----------------------------------------------------------
#|( Convert numeric word forms into numbers.
    * C<$spec> or C<@specs> A string or a list of strings to be converted.
    * C<$lang> A string for the language the word form is written in.
    * C<:$number> A boolean adverb whether the result should be an C<Int> object or a C<Str> object.
    & C<:$p> A boolean adverb whether the result should be a pair with the language of the word form as a key.
)
proto from-numeric-word-form( | ) is export {*}

multi from-numeric-word-form( @specs, Bool :$number = True, :$p = False ) {
    from-numeric-word-form( @specs, 'automatic', :$number, :$p )
}

multi from-numeric-word-form( @specs, Str:D $lang, Bool :$number = True, :$p = False ) {
    do for @specs -> $s {
        from-numeric-word-form($s, $lang, :$number, :$p)
    }
}

multi from-numeric-word-form( Str:D $spec, Bool :$number = True, :$p = False ) {
    from-numeric-word-form( $spec, 'automatic', :$number, :$p )
}

multi from-numeric-word-form( Str:D $spec where has-semicolon($spec), Str:D $lang where $lang.lc eq 'automatic', Bool :$number = True, :$p = False ) {

    my @speLines = $spec.trim.split(/ ';' \s* /).map({ $_.trim });

    from-numeric-word-form( @speLines, $lang, :$number, :$p)
}

multi from-numeric-word-form( Str:D $spec where not has-semicolon($spec), Str:D $lang where $lang.lc eq 'automatic', Bool :$number = True, :$p = False ) {

    my $res = Nil;

    my %langs = %langToRole.keys (-) %langToRoleExtended.keys;

    # Optimization: assuming that English is the most frequent language.
    %langs = %langs (-) 'english';
    my @langs = %langs.keys;
    @langs.prepend(<english>);

    for @langs -> $l {
        quietly {
            $res = from-numeric-word-form($spec, $l, :$number, :$p);
        }
        last if $res.defined;
    }

    warn 'Cannot parse the given word form using automatic language detection.' unless $res.defined;
    $res
}

multi from-numeric-word-form( Str:D $spec, Str:D $lang, Bool :$number = True, :$p = False ) {

    die ('The second argument is expected to be one of: \'automatic\', \'' ~ %langToAction.keys.sort.join('\', \'') ~ '\'.')
    unless %langToAction{$lang.lc}:exists;

    my $parserObj = WordFormParser but %langToRole{$lang.lc};
    my $res = $parserObj.parse( $spec.lc, rule => 'numeric-word-form');

    if not ( $res and $res.Str.chars > 0 ) {
        warn 'Cannot parse the given word form with the specified language.';
        return Nil;
    }

    $res = $parserObj.parse(
            $spec.lc,
            rule => 'numeric-word-form',
            actions => %langToAction{$lang.lc}.new ).made;

    $res = $number ?? $res !! $res.Str;

    $p ?? ($lang => $res) !! $res
}

#===========================================================
# Generation
#===========================================================
proto int-name (Int:D $num, Str:D $lang) {*}

#-----------------------------------------------------------
## Taken from: http://rosettacode.org/wiki/Number_names#Raku

my @I = <zero one    two    three    four     five    six     seven     eight    nine
               ten  eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen>;
my @X = <0    X      twenty thirty   forty    fifty   sixty   seventy   eighty   ninety>;
my @C = @I X~ ' hundred';
my @M = (<0 thousand>,
    ((<m b tr quadr quint sext sept oct non>,
    (map { ('', <un duo tre quattuor quin sex septen octo novem>).flat X~ $_ },
    <dec vigint trigint quadragint quinquagint sexagint septuagint octogint nonagint>),
    'cent').flat X~ 'illion')).flat;

multi int-name (Int:D $num, Str:D $lang) {
    if $num.substr(0,1) eq '-' { return "negative {int-name($num.substr(1), $lang)}" }
    if $num eq '0' { return @I[0] }
    my $m = 0;
    return join ', ', reverse gather for $num.flip.comb(/\d ** 1..3/) {
        my ($i,$x,$c) = .comb».Int;
        if $i or $x or $c {
            take join ' ', gather {
                if $c { take @C[$c] }
                if $x and $x == 1 { take @I[$i+10] }
                else {
                    if $x { take @X[$x] }
                    if $i { take @I[$i] }
                }
                take @M[$m] // die "WOW! ZILLIONS!\n" if $m;
            }
        }
        $m++;
    }
}

#-----------------------------------------------------------
## Taken https://github.com/stmuk/p6-String-Koremutake

my @phonemes = <ba be bi bo bu by da de di do du dy fa fe fi
    fo fu fy ga ge gi go gu gy ha he hi ho hu hy ja je ji jo ju jy ka ke
    ki ko ku ky la le li lo lu ly ma me mi mo mu my na ne ni no nu ny pa
    pe pi po pu py ra re ri ro ru ry sa se si so su sy ta te ti to tu ty
    va ve vi vo vu vy bra bre bri bro bru bry dra dre dri dro dru dry fra
    fre fri fro fru fry gra gre gri gro gru gry pra pre pri pro pru pry
    sta ste sti sto stu sty tra tre>;

my %phoneme_to_number = @phonemes Z=> ^@phonemes.elems;
my %number_to_phoneme = %phoneme_to_number.invert;

sub numbers-to-koremutake($numbers) {
    my $string;
    for @$numbers -> $n {
        fail "0 <= $n <= 127" unless (0 <= $n) && ($n <= 127);
        $string ~= %number_to_phoneme{$n};
    }
    return $string;
}

multi int-name (Int:D $integer is copy, 'koremutake' ) {
    my @numbers;
    @numbers = (0) if $integer == 0;

    while ($integer != 0) {
        @numbers.push( $integer % 128);
        $integer = floor($integer/128);
    }

    return numbers-to-koremutake([reverse @numbers]);
}

#-----------------------------------------------------------
#|( Convert numbers into numeric word forms.
    * C<$num> A number, a string, or a list of strings and/or numbers to be converted.
    * C<$lang> A string for the language the word form is written in.
)
proto to-numeric-word-form( $num, Str:D $lang = 'english' ) is export {*}
#| Only conversion to English and Koremutake is implemented.

multi to-numeric-word-form( Str:D $spec where has-semicolon($spec), Str:D $lang = 'english' ) {

    my @nums = $spec.trim.split(/ ';' \s* /).map({ $_.trim });

    to-numeric-word-form( @nums, $lang )
}

multi to-numeric-word-form( Str:D $num where not has-semicolon($num), Str:D $lang = 'english' ) {
    to-numeric-word-form( $num.Int, $lang )
}

multi to-numeric-word-form( Int:D $num, Str:D $lang = 'english' ) {

    #die 'Unknown language.' unless %langToX{$lang.lc}:exists;

    note "Using English, not $lang." unless $lang.lc (elem) <english koremutake>;

    int-name($num, $lang.lc)
}

multi to-numeric-word-form( @nums, Str:D $lang = 'english' --> List) {

    note "Using English, not $lang." unless $lang.lc (elem) <english koremutake>;

    @nums.map({ to-numeric-word-form($_, $lang.lc) }).List
}


#===========================================================
# Translation
#===========================================================
#|( Translate a numeric word form from one language into another language.
   * C<$spec> A string with a numeric word form.
   * C<$rule> A pair the specifies from which language to translate to which language.
)
proto translate-numeric-word-form( Str:D $spec, Pair $rule = ('English' => 'Bulgarian') ) is export {*}
#| Only translation to English is implemented.

multi translate-numeric-word-form( Str:D $spec, Pair $rule = ('English' => 'Bulgarian') ) {

    my Int $num = from-numeric-word-form($spec, $rule.key, :number);

    if $num { to-numeric-word-form($num, $rule.value) } else { Nil }
}

=begin pod

=head1 Lingua::NumericWordForms

C<Lingua::NumericWordForms> provides functions for the
generation, parsing, and interpretation of numeric word forms in different languages.

=head1 Synopsis

    use Lingua::NumericWordForms;
    say from-numeric-word-form('one thousand two hundred and five');
    say from-numeric-word-form('хиляда двеста и пет', 'Bulgarian');
    say to-numeric-word-form(3394);
    say translate-numeric-word-form('сто двадесет и три', 'Bulgarian' => 'English');

=end pod