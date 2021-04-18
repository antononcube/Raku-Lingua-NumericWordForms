use Test;

use lib './lib';
use lib '.';

use Lingua::NumericWordForms;

plan 8;

#-----------------------------------------------------------
# Automatic language determination
#-----------------------------------------------------------

## 1
is from-numeric-word-form('fifteen hundred', 'automatic', :p),
        (english => 1500),
        'fifteen hundred';

## 2
is from-numeric-word-form('одна тысяча двадцать три', 'automatic', :p),
        (russian => 1023),
        'одна тысяча двадцать три';

## 3
is from-numeric-word-form('one thousand and twenty three', 'automatic', :p),
        (english => 1023),
        'one thousand and twenty three';

## 4
is from-numeric-word-form('хиляда и двадесет и три', 'automatic', :p),
        (bulgarian => 1023),
        'хиляда и двадесет и три';

## 5
is from-numeric-word-form('tysiąc dwadzieścia trzy', 'automatic', :p),
        (polish => 1023),
        'tysiąc dwadzieścia trzy';

## 6
is from-numeric-word-form('setecientos treinta y un', 'automatic', :p),
        (spanish => 731),
        'setecientos treinta y un';

## 7
is from-numeric-word-form( 'три хиляди и двадесет четири', :p),
        (bulgarian => 3024),
        'три хиляди и двадесет четири';

## 8
my @specs = ('tysiąc dwadzieścia trzy',
             'un mil ciento seis',
             'six hundred million eight hundred and twelve',
             'триста и две хиляди и трийсет',);
is from-numeric-word-form(@specs, :p, :!number).WHAT,
        List,
        'list of word forms in different languages';


done-testing;