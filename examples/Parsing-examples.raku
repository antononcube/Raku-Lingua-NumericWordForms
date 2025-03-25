use v6;

# use lib <. ./lib>;

use Lingua::NumericWordForms;
use Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::English::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Greek::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Japanese::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Russian::WordedNumberSpec;

use Lingua::NumericWordForms::Actions::Bulgarian::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::English::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Greek::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Japanese::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Russian::WordedNumberSpec;

##============================================================
grammar English-ParseObj
        does Lingua::NumericWordForms::Roles::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::English::WordedNumberSpec {

    rule TOP { <numeric-word-form> }
};

grammar Bulgarian-ParseObj
        does Lingua::NumericWordForms::Roles::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec {

    rule TOP { <numeric-word-form> }
};

grammar Japanese-ParseObj
        does Lingua::NumericWordForms::Roles::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::Japanese::WordedNumberSpec {

    rule TOP { <numeric-word-form> }
};

grammar Greek-ParseObj
        does Lingua::NumericWordForms::Roles::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::Greek::WordedNumberSpec {

    rule TOP { <numeric-word-form> }
};

##============================================================
say '=' x 30, '  English  ', '=' x 30;

my $spec = 'one thousand and five hundred';
say $spec, ' : ',
        English-ParseObj.parse( $spec,
        rule => 'numeric-word-form',
        actions => Lingua::NumericWordForms::Actions::English::WordedNumberSpec.new ).made;

say "-" x 60;

$spec = 'thousand and five hundred';
say $spec, ' : ',
        English-ParseObj.parse( $spec,
        rule => 'numeric-word-form',
        actions => Lingua::NumericWordForms::Actions::English::WordedNumberSpec.new ).made;

say "-" x 60;

$spec = 'two hundred and twenty one';
say $spec, ' : ',
        English-ParseObj.parse( $spec,
        rule => 'numeric-word-form',
        actions => Lingua::NumericWordForms::Actions::English::WordedNumberSpec.new ).made;

say "-" x 60;

$spec = 'eight hundred sixty‐seven billion, five hundred sixty‐one million, three hundred eighty thousand, four hundred fourteen';
say $spec, ' : ',
        English-ParseObj.parse( $spec,
        rule => 'numeric-word-form',
        actions => Lingua::NumericWordForms::Actions::English::WordedNumberSpec.new ).made;

##============================================================
say "\n";
say '=' x 30, '  Bulgarian  ', '=' x 30;

$spec = 'хиляда седемстотин осемдесет и три';
say $spec, ' : ',
        Bulgarian-ParseObj.parse( $spec,
        rule => 'numeric-word-form',
        actions => Lingua::NumericWordForms::Actions::Bulgarian::WordedNumberSpec.new).made;

say '-' x 60;

$spec = 'осемстотин четиридесет и два милиона седемстотин четири хиляди седемстотин осемдесет и три';
say $spec, ' : ',
        Bulgarian-ParseObj.parse( $spec,
        rule => 'numeric-word-form',
        actions => Lingua::NumericWordForms::Actions::Bulgarian::WordedNumberSpec.new).made;


##============================================================
say "\n";
say '=' x 30, '  Japanese  ', '=' x 30;

$spec = '一万七百八十三';
say $spec, ' : ',
        Japanese-ParseObj.parse( $spec,
                rule => 'numeric-word-form',
                actions => Lingua::NumericWordForms::Actions::Japanese::WordedNumberSpec.new ).made;

say "-" x 60;

$spec = '九千五百万';
say $spec, ' : ',
        Japanese-ParseObj.parse( $spec,
        rule => 'numeric-word-form',
        actions => Lingua::NumericWordForms::Actions::Japanese::WordedNumberSpec.new ).made;

say "-" x 60;

##============================================================
#εβδομήντα έξι εκατομμύρια επτακόσιες είκοσι τέσσερις χίλιάδες τετρακόσια τριάντα έξι

say "\n";
say '=' x 30, ' Greek  ', '=' x 30;

$spec = 'εβδομήντα έξι εκατομμύρια επτακόσιες είκοσι τέσσερις χίλιάδες τετρακόσια τριάντα έξι';
say $spec, ' : ',
        Greek-ParseObj.parse( $spec,
                rule => 'numeric-word-form',
                actions => Lingua::NumericWordForms::Actions::Greek::WordedNumberSpec.new ).made;