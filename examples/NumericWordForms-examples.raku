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

my $spec = 'τετρακόσια είκοσι επτά; триста и две хиляди и трийсет';
say from-numeric-word-form($spec):p:!number;

my @specs = ('τετρακόσια είκοσι επτά',
             '二十万六十五',
             'tysiąc dwadzieścia trzy',
             'un mil ciento seis',
             'six hundred million eight hundred and twelve',
             'триста и две хиляди и трийсет');
say from-numeric-word-form(@specs):p:!number;

#my $spec = 'tysiąc dwadzieścia trzy';
#say 'word form : ' , $spec;
#say 'translation : ', translate-numeric-word-form( $spec, 'Polish' => 'English' );
#
#$spec = 'mil quinientos treinta y cinco';
#say 'word form : ' , $spec;
#say 'translation : ', translate-numeric-word-form( $spec, 'Spanish' => 'English' );

my @commands = (
'二十六十五',
'چهل و هشت',
'صد و بیست و پنج',
'setecientos treinta y un',
'un mil ciento seis',
'veintinueve',
'mil quinientos treinta y cinco',
'tysiąc dwadzieścia trzy',
'fifteen hundred and twenty five',
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

#for @commands -> $c {
#    say "=" x 60;
#    say $c;
#    my $res = from-numeric-word-form($c, 'Automatic', :number, :p);
#    if $res {
#        say "-" x 40;
#        say 'from ', $res.key, ' word form: ', $res.value ;
#        say 'to English word form : ', to-numeric-word-form($res.value, 'English');
#    }
#};


