use Test;

use lib './lib';
use lib '.';

use Lingua::NumericWordForms;

plan 6;

#-----------------------------------------------------------
# Automatic language determination
#-----------------------------------------------------------

## 1
is from-numeric-word-form('fifteen hundred', 'automatic', :pair),
        (english => 1500),
        'fifteen hundred';

## 2
is from-numeric-word-form('одна тысяча двадцать три', 'automatic', :pair),
        (russian => 1023),
        'одна тысяча двадцать три';

## 3
is from-numeric-word-form('one thousand and twenty three', 'automatic', :pair),
        (english => 1023),
        'one thousand and twenty three';

## 4
is from-numeric-word-form('хиляда и двадесет и три', 'automatic', :pair),
        (bulgarian => 1023),
        'хиляда и двадесет и три';

## 5
is from-numeric-word-form('tysiąc dwadzieścia trzy', 'automatic', :pair),
        (polish => 1023),
        'tysiąc dwadzieścia trzy';

## 6
is from-numeric-word-form('setecientos treinta y un', 'automatic', :pair),
        (spanish => 731),
        'setecientos treinta y un';

done-testing;