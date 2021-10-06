use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::English::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {

    regex worded_number_100s:sym<English> { <name_1_to_19> \h+ <name_of_100> | <name_of_100> }

    regex worded_number_up_to_100:sym<English> { <name_of_10s> [ [ \h* <.hyphen-symbol> \h* | \h+ ]? <name_1_to_10> ]? || <name_up_to_19> }

    token name_of_0:sym<English> {'zero' | 'zeroth'}
    token name_of_1:sym<English> {'one' | 'first'}
    token name_of_2:sym<English> {'two' | 'second'}
    token name_of_3:sym<English> {'three' | 'third'}
    token name_of_4:sym<English> {'four' | 'fourth'}
    token name_of_5:sym<English> {'five' | 'fifth'}
    token name_of_6:sym<English> {'six' | 'sixth'}
    token name_of_7:sym<English> {'seven' | 'seventh'}
    token name_of_8:sym<English> {'eight' | 'eighth'}
    token name_of_9:sym<English> {'nine' | 'ninth'}
    token name_of_10:sym<English> {'ten' | 'tenth'}
    token name_of_11:sym<English> {'eleven' | 'eleventh'}
    token name_of_12:sym<English> {'twelve' | 'twelfth'}
    token name_of_13:sym<English> {'thirteen' | 'thirteenth'}
    token name_of_14:sym<English> {'fourteen' | 'fourteenth'}
    token name_of_15:sym<English> {'fifteen' | 'fifteenth'}
    token name_of_16:sym<English> {'sixteen' | 'sixteenth'}
    token name_of_17:sym<English> {'seventeen' | 'seventeenth'}
    token name_of_18:sym<English> {'eighteen' | 'eighteenth'}
    token name_of_19:sym<English> {'nineteen' | 'nineteenth'}
    token name_of_20:sym<English> {'twenty' | 'twentieth'}
    token name_of_30:sym<English> {'thirty' | 'thirtieth'}
    token name_of_40:sym<English> {'forty' | 'fortieth'}
    token name_of_50:sym<English> {'fifty' | 'fiftieth'}
    token name_of_60:sym<English> {'sixty' | 'sixtieth'}
    token name_of_70:sym<English> {'seventy' | 'seventieth'}
    token name_of_80:sym<English> {'eighty' | 'eightieth'}
    token name_of_90:sym<English> {'ninety' | 'ninetieth'}
    token name_of_100:sym<English> {'hundred' | 'hundredth'}
    token suffix_for_100:sym<English> {'-hundred' | '-hundredth'}
    token name_of_1000:sym<English> {'thousand' | 'thousandth'}
    token name_of_1000000:sym<English> {'million' | 'millionth'}
    token name_of_bil:sym<English> {'billion' | 'billionth'}
    token name_of_tril:sym<English> {'trillion' | 'trillionth'}

    token worded-number-and-conjunction:sym<English> {'and'}
}