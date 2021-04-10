use v6;

use lib './lib';
use lib '.';

use Lingua::NumericWordForms;
use Lingua::NumericWordForms::Roles::English::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Russian::WordedNumberSpec;

use Lingua::NumericWordForms::Actions::Bulgarian::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::English::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Russian::WordedNumberSpec;

grammar ParseObj
        does Lingua::NumericWordForms::Roles::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::English::WordedNumberSpec {

    rule TOP { <worded-number-spec> }
};

grammar BGParseObj
        does Lingua::NumericWordForms::Roles::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec {

    rule TOP { <worded-number-spec> }
};


#say ParseObj.parse( 'one thousand and five hundred', rule => 'worded-number-spec',  actions => Lingua::NumericWordForms::Actions::English::WordedNumberSpec.new ).made;

#say ParseObj.parse( 'thousand and five hundred', rule => 'worded-number-spec',  actions => Lingua::NumericWordForms::Actions::English::WordedNumberSpec.new ).made;
#
#say '=' x 60;
#
#say ParseObj.parse( 'петстотин четиридесет и пет милиона седемстотин четири хиляди седемстотин осемдесет и три', rule => 'worded-number-spec');
#
#say '=' x 60;
#
#say ParseObj.parse( 'осемстотин четиридесет и два милиона седемстотин четири хиляди седемстотин осемдесет и три', rule => 'worded-number-spec');

#say ParseObj.parse( 'two hundred and twenty one', rule => 'worded-number-spec', actions => Lingua::NumericWordForms::Actions::English::WordedNumberSpec.new ).made;
#
#say "-" x 60;
#
#say ParseObj.parse( 'eight hundred sixty‐seven billion, five hundred sixty‐one million, three hundred eighty thousand, four hundred fourteen', rule => 'worded-number-spec', actions => Lingua::NumericWordForms::Actions::English::WordedNumberSpec.new ).made;
#
#say "=" x 60;


#my @commands = (
#'thirty eight',
#'thirty - eight',
#'thirty-eight',
#'five hundred thirty eight',
#'thirty - eight thousand',
#'thirty-eight thousand',
#'thirty eight thousand',
#'three hundred and thirty eight',
#'three hundred thirty eight',
#'two hundred and thirty eight thousand',
#'two hundred thirty eight thousand',
#'fifteen hundred',
#'one thousand and five hundred',
#'six hundred million',
#'thirteen hundred ninety nine million');



my @commands = (
'fifteen hundred',
'one thousand and five hundred',
'six hundred million',
'thirteen hundred ninety nine million',
'четиридесет и осем',
'четирсет и осем',
'сто двайсе и пет',
'двеста петдесет и три',
'две хиляди и трийсет',
'седемдесе и пет милиона, триста и осем хиляди и двеста петдесе и три'
);

my @langs = <English Bulgarian>;

for @commands -> $c {
    say "=" x 60;
    say $c;
    for @langs -> $l {
        say "-" x 40;
        say "Language $l: ", from-numeric-word-form($c, $l, :!number);
    }
};


