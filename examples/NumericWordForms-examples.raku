use v6;

use lib './lib';
use lib '.';

use Lingua::NumericWordForms;

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
'thousand and five hundred',
'six hundred million',
'thirteen hundred ninety nine million',
'четиридесет и осем',
'четирсет и осем',
'сто двайсе и пет',
'двеста петдесет и три',
'две хиляди и трийсет',
'хиляда и трийсет',
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


