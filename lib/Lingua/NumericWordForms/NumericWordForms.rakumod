
=begin pod

=head1 DSL::Entity::English::Jobs

C<DSL::Entity::English::Jobs> package has grammar and action classes for the parsing and
interpretation of natural language commands that specify classification workflows.

=head1 Synopsis

    use Lingua::NumericWor;
    my $rcode = ToJobEntityCode('use dfTitanic; split data in training and testing parts with ratio 0.7; make a classifier; show roc curves');

=end pod

unit module Lingua::NumericWordForms;

use Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::English::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Polish::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Russian::WordedNumberSpec;

use Lingua::NumericWordForms::Actions::Bulgarian::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::English::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Polish::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Russian::WordedNumberSpec;

#===========================================================
# Parsing
#===========================================================
my %langToAction =
    "bulgarian"      => Lingua::NumericWordForms::Actions::Bulgarian::WordedNumberSpec,
    "english"        => Lingua::NumericWordForms::Actions::English::WordedNumberSpec,
    "polish"         => Lingua::NumericWordForms::Actions::Polish::WordedNumberSpec,
    "russian"        => Lingua::NumericWordForms::Actions::Russian::WordedNumberSpec,
    "български"      => Lingua::NumericWordForms::Actions::Bulgarian::WordedNumberSpec,
    "polski"         => Lingua::NumericWordForms::Actions::Polish::WordedNumberSpec,
    "руский"         => Lingua::NumericWordForms::Actions::Russian::WordedNumberSpec;

my %langToRole =
    "bulgarian"      => Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec,
    "english"        => Lingua::NumericWordForms::Roles::English::WordedNumberSpec,
    "polish"         => Lingua::NumericWordForms::Roles::Polish::WordedNumberSpec,
    "russian"        => Lingua::NumericWordForms::Roles::Russian::WordedNumberSpec,
    "български"      => Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec,
    "polski"         => Lingua::NumericWordForms::Roles::Polish::WordedNumberSpec,
    "руский"         => Lingua::NumericWordForms::Roles::Russian::WordedNumberSpec;

#-----------------------------------------------------------
grammar WordFormParser
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {
        rule TOP { <numeric-word-form> }
    }

#-----------------------------------------------------------
proto from-numeric-word-form( Str:D $spec, Str:D $lang = 'English', Bool :$number = True ) is export {*}

multi from-numeric-word-form( Str @specs, Str:D $lang = 'English', Bool :$number = True ) {
    do for @specs -> $s {
        from-numeric-word-form($s, $lang, :$number)
    }
}

multi from-numeric-word-form( Str:D $spec, Str:D $lang = 'English', Bool :$number = True ) {

    die ('Unknown language. The known languages are: ' ~ %langToAction.keys.sort.join(', ') ~ '.')
    unless %langToAction{$lang.lc}:exists;

    my $parserObj = WordFormParser but %langToRole{$lang.lc};
    my $res = $parserObj.parse( $spec.lc, rule => 'numeric-word-form');

    if not ( $res and $res.Str.chars > 0 ) {
        note 'Cannot parse the given word form with the specified language.';
        return Nil;
    }

    $res = $parserObj.parse(
            $spec.lc,
            rule => 'numeric-word-form',
            actions => %langToAction{$lang.lc}.new ).made;

    $number ?? $res !! $res.Str
}

#===========================================================
# Generation
#===========================================================

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

sub int-name (Int:D $num, Str:D $lang) {
    if $num.substr(0,1) eq '-' { return "negative {int-name($num.substr(1))}" }
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
proto to-numeric-word-form( Int:D $num, Str:D $lang = 'English' ) is export {*}

multi to-numeric-word-form( Int:D $num, Str:D $lang = 'English' ) {

    #die 'Unknown language.' unless %langToX{$lang.lc}:exists;

    note "Using English, not $lang." unless $lang.lc eq "english";

    int-name($num, $lang.lc)
}

#===========================================================
# Translation
#===========================================================
proto translate-numeric-word-form( Str:D $spec, Pair $rule = ('English' => 'Bulgarian') ) is export {*}

multi translate-numeric-word-form( Str:D $spec, Pair $rule = ('English' => 'Bulgarian') ) {

    my Int $num = from-numeric-word-form($spec, $rule.key, :number);

    if $num { to-numeric-word-form($num, $rule.value) } else { Nil }
}