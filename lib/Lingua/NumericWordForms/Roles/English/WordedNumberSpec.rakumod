use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::English::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {

    regex worded_number_100s:sym<English> { <name_1_to_19> \h+ <name_of_100> | <name_of_100> }

    regex worded_number_up_to_100:sym<English> { <name_of_10s> [ [ \h* <.hyphen-symbol> \h* | \h+ ]? <name_1_to_10> ]? || <name_up_to_19> }

    token name_of_0:sym<English> {'zero'}
    token name_of_1:sym<English> {'one'}
    token name_of_2:sym<English> {'two'}
    token name_of_3:sym<English> {'three'}
    token name_of_4:sym<English> {'four'}
    token name_of_5:sym<English> {'five'}
    token name_of_6:sym<English> {'six'}
    token name_of_7:sym<English> {'seven'}
    token name_of_8:sym<English> {'eight'}
    token name_of_9:sym<English> {'nine'}
    token name_of_10:sym<English> {'ten'}
    token name_of_11:sym<English> {'eleven'}
    token name_of_12:sym<English> {'twelve'}
    token name_of_13:sym<English> {'thirteen'}
    token name_of_14:sym<English> {'fourteen'}
    token name_of_15:sym<English> {'fifteen'}
    token name_of_16:sym<English> {'sixteen'}
    token name_of_17:sym<English> {'seventeen'}
    token name_of_18:sym<English> {'eighteen'}
    token name_of_19:sym<English> {'nineteen'}
    token name_of_20:sym<English> {'twenty'}
    token name_of_30:sym<English> {'thirty'}
    token name_of_40:sym<English> {'forty'}
    token name_of_50:sym<English> {'fifty'}
    token name_of_60:sym<English> {'sixty'}
    token name_of_70:sym<English> {'seventy'}
    token name_of_80:sym<English> {'eighty'}
    token name_of_90:sym<English> {'ninety'}
    token name_of_100:sym<English> {'hundred'}
    token suffix_for_100:sym<English> {'-hundred'}
    token name_of_1000:sym<English> {'thousand'}
    token name_of_1000000:sym<English> {'million'}
    token name_of_bil:sym<English> {'billion'}
    token worded-number-and-conjunction:sym<English> {'and'}
}