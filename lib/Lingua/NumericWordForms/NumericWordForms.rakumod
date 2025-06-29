unit module Lingua::NumericWordForms;

use Lingua::NumericWordForms::Roles::Armenian::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Azerbaijani::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Czech::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::English::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::French::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::German::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Greek::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Japanese::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Kazakh::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Korean::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Koremutake::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Persian::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Polish::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Portuguese::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Romanian::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Russian::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Spanish::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Ukrainian::WordedNumberSpec;

use Lingua::NumericWordForms::Actions::Armenian::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Azerbaijani::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Bulgarian::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Czech::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::English::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::French::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::German::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Greek::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Japanese::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Kazakh::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Korean::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Koremutake::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Persian::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Polish::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Portuguese::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Romanian::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Russian::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Spanish::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Ukrainian::WordedNumberSpec;

# Generation
use Lingua::NumericWordForms::Generators::Armenian;
use Lingua::NumericWordForms::Generators::Bulgarian;
use Lingua::NumericWordForms::Generators::Japanese;
use Lingua::NumericWordForms::Generators::Russian;

#===========================================================
# Parsing
#===========================================================
my %langToAction =
    "armenian"       => Lingua::NumericWordForms::Actions::Armenian::WordedNumberSpec,
    "azerbaijani"    => Lingua::NumericWordForms::Actions::Azerbaijani::WordedNumberSpec,
    "bulgarian"      => Lingua::NumericWordForms::Actions::Bulgarian::WordedNumberSpec,
    "czech"          => Lingua::NumericWordForms::Actions::Czech::WordedNumberSpec,
    "english"        => Lingua::NumericWordForms::Actions::English::WordedNumberSpec,
    "french"         => Lingua::NumericWordForms::Actions::French::WordedNumberSpec,
    "german"         => Lingua::NumericWordForms::Actions::German::WordedNumberSpec,
    "greek"          => Lingua::NumericWordForms::Actions::Greek::WordedNumberSpec,
    "japanese"       => Lingua::NumericWordForms::Actions::Japanese::WordedNumberSpec,
    "kazakh"         => Lingua::NumericWordForms::Actions::Kazakh::WordedNumberSpec,
    "korean"         => Lingua::NumericWordForms::Actions::Korean::WordedNumberSpec,
    "koremutake"     => Lingua::NumericWordForms::Actions::Koremutake::WordedNumberSpec,
    "persian"        => Lingua::NumericWordForms::Actions::Persian::WordedNumberSpec,
    "polish"         => Lingua::NumericWordForms::Actions::Polish::WordedNumberSpec,
    "portuguese"     => Lingua::NumericWordForms::Actions::Portuguese::WordedNumberSpec,
    "romanian"       => Lingua::NumericWordForms::Actions::Romanian::WordedNumberSpec,
    "russian"        => Lingua::NumericWordForms::Actions::Russian::WordedNumberSpec,
    "spanish"        => Lingua::NumericWordForms::Actions::Spanish::WordedNumberSpec,
    "ukrainian"      => Lingua::NumericWordForms::Actions::Ukrainian::WordedNumberSpec;


my %langToActionExtended =
    "հայերեն"        => Lingua::NumericWordForms::Actions::Armenian::WordedNumberSpec,
    "azərbaycan"     => Lingua::NumericWordForms::Actions::Azerbaijani::WordedNumberSpec,
    "český"          => Lingua::NumericWordForms::Actions::Czech::WordedNumberSpec,
    "español"        => Lingua::NumericWordForms::Actions::Spanish::WordedNumberSpec,
    "français"       => Lingua::NumericWordForms::Actions::French::WordedNumberSpec,
    "deutsch"        => Lingua::NumericWordForms::Actions::German::WordedNumberSpec,
    "qazaq"          => Lingua::NumericWordForms::Actions::Kazakh::WordedNumberSpec,
    "казак"          => Lingua::NumericWordForms::Actions::Kazakh::WordedNumberSpec,
    "қазақ"          => Lingua::NumericWordForms::Actions::Kazakh::WordedNumberSpec,
    "ελληνικά"       => Lingua::NumericWordForms::Actions::Greek::WordedNumberSpec,
    "български"      => Lingua::NumericWordForms::Actions::Bulgarian::WordedNumberSpec,
    "polski"         => Lingua::NumericWordForms::Actions::Polish::WordedNumberSpec,
    "português"      => Lingua::NumericWordForms::Actions::Portuguese::WordedNumberSpec,
    "română"         => Lingua::NumericWordForms::Actions::Romanian::WordedNumberSpec,
    "руский"         => Lingua::NumericWordForms::Actions::Russian::WordedNumberSpec,
    "український"    => Lingua::NumericWordForms::Actions::Ukrainian::WordedNumberSpec,
    "日本語"          => Lingua::NumericWordForms::Actions::Japanese::WordedNumberSpec,
    "한국어"           => Lingua::NumericWordForms::Actions::Korean::WordedNumberSpec;


%langToAction = %langToAction , %langToActionExtended;

my %langToRole =
    "armenian"       => Lingua::NumericWordForms::Roles::Armenian::WordedNumberSpec,
    "azerbaijani"    => Lingua::NumericWordForms::Roles::Azerbaijani::WordedNumberSpec,
    "bulgarian"      => Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec,
    "czech"          => Lingua::NumericWordForms::Roles::Czech::WordedNumberSpec,
    "english"        => Lingua::NumericWordForms::Roles::English::WordedNumberSpec,
    "french"         => Lingua::NumericWordForms::Roles::French::WordedNumberSpec,
    "german"         => Lingua::NumericWordForms::Roles::German::WordedNumberSpec,
    "greek"          => Lingua::NumericWordForms::Roles::Greek::WordedNumberSpec,
    "japanese"       => Lingua::NumericWordForms::Roles::Japanese::WordedNumberSpec,
    "kazakh"         => Lingua::NumericWordForms::Roles::Kazakh::WordedNumberSpec,
    "korean"         => Lingua::NumericWordForms::Roles::Korean::WordedNumberSpec,
    "koremutake"     => Lingua::NumericWordForms::Roles::Koremutake::WordedNumberSpec,
    "persian"        => Lingua::NumericWordForms::Roles::Persian::WordedNumberSpec,
    "polish"         => Lingua::NumericWordForms::Roles::Polish::WordedNumberSpec,
    "portuguese"     => Lingua::NumericWordForms::Roles::Portuguese::WordedNumberSpec,
    "romanian"       => Lingua::NumericWordForms::Roles::Romanian::WordedNumberSpec,
    "russian"        => Lingua::NumericWordForms::Roles::Russian::WordedNumberSpec,
    "spanish"        => Lingua::NumericWordForms::Roles::Spanish::WordedNumberSpec,
    "ukrainian"      => Lingua::NumericWordForms::Roles::Ukrainian::WordedNumberSpec;

my %langToRoleExtended =
    "հայերեն"        => Lingua::NumericWordForms::Roles::Armenian::WordedNumberSpec,
    "azərbaycan"     => Lingua::NumericWordForms::Roles::Azerbaijani::WordedNumberSpec,
    "český"          => Lingua::NumericWordForms::Roles::Czech::WordedNumberSpec,
    "español"        => Lingua::NumericWordForms::Roles::Spanish::WordedNumberSpec,
    "français"       => Lingua::NumericWordForms::Roles::French::WordedNumberSpec,
    "deutsch"        => Lingua::NumericWordForms::Roles::German::WordedNumberSpec,
    "qazaq"          => Lingua::NumericWordForms::Roles::Kazakh::WordedNumberSpec,
    "казак"          => Lingua::NumericWordForms::Roles::Kazakh::WordedNumberSpec,
    "қазақ"          => Lingua::NumericWordForms::Roles::Kazakh::WordedNumberSpec,
    "ελληνικά"       => Lingua::NumericWordForms::Roles::Greek::WordedNumberSpec,
    "български"      => Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec,
    "polski"         => Lingua::NumericWordForms::Roles::Polish::WordedNumberSpec,
    "português"      => Lingua::NumericWordForms::Roles::Portuguese::WordedNumberSpec,
    "română"         => Lingua::NumericWordForms::Roles::Romanian::WordedNumberSpec,
    "руский"         => Lingua::NumericWordForms::Roles::Russian::WordedNumberSpec,
    "український"    => Lingua::NumericWordForms::Roles::Ukrainian::WordedNumberSpec,
    "日本語"          => Lingua::NumericWordForms::Roles::Japanese::WordedNumberSpec,
    "한국어"           => Lingua::NumericWordForms::Roles::Korean::WordedNumberSpec;

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
proto sub from-numeric-word-form( | ) is export {*}

multi sub from-numeric-word-form('language-roles') {
    %langToRole;
}

multi sub from-numeric-word-form('languages', Bool :$group = False) {
    if $group {
        from-numeric-word-form('language-roles').pairs.classify({ $_.value }).map({ $_.value>>.key.List.sort });
    } else {
        from-numeric-word-form('language-roles').keys;
    }
}

multi sub from-numeric-word-form(@specs, $lang, *%args) {
    from-numeric-word-form(@specs, :$lang, |%args);
}

multi sub from-numeric-word-form(@specs, :$lang = Whatever, *%args) {
    do for @specs -> $s {
        from-numeric-word-form($s, :$lang, |%args);
    }
}

multi sub from-numeric-word-form( Str:D $spec, $lang, *%args) {
    from-numeric-word-form( $spec, :$lang, |%args);
}

multi sub from-numeric-word-form(
        Str:D $spec where has-semicolon($spec),
        :$lang = Whatever,
        Bool :$number = True,
        Bool :$p = False ) {

    my @speLines = $spec.trim.split(/ ';' \s* /).map({ $_.trim });

    from-numeric-word-form( @speLines, :$lang, :$number, :$p)
}

sub from-numeric-word-form-auto (
        Str:D $spec where !has-semicolon($spec),
        Bool :$number = True,
        Bool :p(:$pairs) = False ) {

    my $res = Nil;

    my %langs = %langToRole.keys (-) %langToRoleExtended.keys;

    # Optimization: assuming that English is the most frequent language.
    %langs = %langs (-) 'english';
    my @langs = %langs.keys;
    @langs.prepend(<english>);

    for @langs -> $l {
        quietly {
            $res = from-numeric-word-form($spec, lang => $l, :$number, :$pairs);
        }
        last if $res.defined;
    }

    warn 'Cannot parse the given word form using automatic language detection.' unless $res.defined;
    return $res;
}

multi sub from-numeric-word-form( Str:D $spec,
                                  :$lang is copy = Whatever,
                                  Bool :$number = True,
                                  Bool :p(:$pairs) = False ) {

    if $lang.isa(Whatever) { $lang = 'automatic'; }
    die "The second argument \$lang is expected to be Whatever, 'automatic', or one of '{%langToAction.keys.sort.join("', '")}'."
    unless $lang ~~ Str:D && ($lang.lc eq 'automatic' || (%langToAction{$lang.lc}:exists));

    if $lang.lc eq 'automatic' {
        return from-numeric-word-form-auto($spec, :$number, :$pairs);
    }

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

    $pairs ?? ($lang => $res) !! $res
}

#===========================================================
# Generation
#===========================================================
proto int-name (Int:D $num, Str:D $lang) {*}

multi int-name (Int:D $integer is copy, Str:D $lang where $lang ∈ <armenian bulgarian japanese russian> ) {
    my $obj = do given $lang {
        when 'armenian' { Lingua::NumericWordForms::Generators::Armenian.new; }
        when 'bulgarian' { Lingua::NumericWordForms::Generators::Bulgarian.new; }
        when 'japanese' { Lingua::NumericWordForms::Generators::Japanese.new; }
        when 'russian' { Lingua::NumericWordForms::Generators::Russian.new; }
    };

    return $obj.generate($integer)
}

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

multi int-name (Int:D $integer is copy, 'koremutake' ) {
    return integer-to-koremutake($integer)
}

#-----------------------------------------------------------
#|( Convert numbers into numeric word forms.
    * C<$num> A number, a string, or a list of strings and/or numbers to be converted.
    * C<$lang> A string for the language the word form is written in.
)
proto sub to-numeric-word-form($num, |) is export {*}
#| Only conversion to English and Koremutake is implemented.

multi sub to-numeric-word-form( $spec, $lang = 'english' ) {
    return to-numeric-word-form($spec, :$lang);
}

multi sub to-numeric-word-form( Str:D $spec where has-semicolon($spec), :$lang = 'english' ) {

    my @nums = $spec.trim.split(/ ';' \s* /).map({ $_.trim });

    to-numeric-word-form( @nums, $lang )
}

multi sub to-numeric-word-form( Str:D $num where not has-semicolon($num), :$lang = 'english' ) {
    to-numeric-word-form( $num.Int, $lang )
}

multi sub to-numeric-word-form( Int:D $num, :$lang is copy = 'english' ) {

    if $lang.isa(Whatever) { $lang = 'english'; }
    #die 'Unknown language.' unless %langToX{$lang.lc}:exists;

    note "Using English, not $lang." unless $lang.lc (elem) <armenian bulgarian english japanese koremutake russian>;

    int-name($num, $lang.lc)
}

multi to-numeric-word-form( @nums, Str:D $lang = 'english' --> List) {

    note "Using English, not $lang." unless $lang.lc (elem) <armenian bulgarian english japanese koremutake russian>;

    @nums.map({ to-numeric-word-form($_, $lang.lc) }).List
}


#===========================================================
# Translation
#===========================================================
#|( Translate a numeric word form from one language into another language.
   * C<$spec> A string with a numeric word form.
   * C<$rule> A pair the specifies from which language to translate to which language.
)
proto sub translate-numeric-word-form( Str:D $spec, |) is export {*}
#| Only translation to Bulgarian, English, and Koremutake is implemented.

multi sub translate-numeric-word-form( Str:D $spec, Pair:D $rule = Pair.new('Automatic', 'English') ) {

    my Int $num = from-numeric-word-form($spec, $rule.key, :number);

    with $num {
        to-numeric-word-form($num, $rule.value)
    } else {
        Nil
    }
}

multi sub translate-numeric-word-form( Str:D $spec, :$from is copy = Whatever, :$to is copy = 'English') {

    my Int $num = from-numeric-word-form($spec, $from, :number);

    with $num {
        to-numeric-word-form($num, $to)
    } else {
        Nil
    }
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