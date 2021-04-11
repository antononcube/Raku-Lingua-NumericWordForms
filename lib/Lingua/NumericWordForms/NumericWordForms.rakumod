
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
use Lingua::NumericWordForms::Roles::Russian::WordedNumberSpec;

use Lingua::NumericWordForms::Actions::Bulgarian::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::English::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Russian::WordedNumberSpec;

#===========================================================
# Parsing
#===========================================================
my %langToAction =
    "bulgarian"      => Lingua::NumericWordForms::Actions::Bulgarian::WordedNumberSpec,
    "english"        => Lingua::NumericWordForms::Actions::English::WordedNumberSpec,
    "russian"        => Lingua::NumericWordForms::Actions::Russian::WordedNumberSpec,
    "български"      => Lingua::NumericWordForms::Actions::Bulgarian::WordedNumberSpec,
    "руский"         => Lingua::NumericWordForms::Actions::Russian::WordedNumberSpec;

my %langToRole =
    "bulgarian"      => Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec,
    "english"        => Lingua::NumericWordForms::Roles::English::WordedNumberSpec,
    "russian"        => Lingua::NumericWordForms::Roles::Russian::WordedNumberSpec,
    "български"      => Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec,
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

    die 'Unknown language.' unless %langToAction{$lang.lc}:exists;

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
proto to-numeric-word-form( Int:D $num, Str:D $lang = 'English' ) is export {*}

multi to-numeric-word-form( Int:D $num, Str:D $lang = 'English' ) {

    die 'Not implemented';
}
