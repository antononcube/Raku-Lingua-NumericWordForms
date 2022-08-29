use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::Korean::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {

    rule numeric-word-form:sym<Korean> { <worded_number_up_to_kei> }

    regex preceding-number-separator:sym<Korean>  { \h* }

    regex worded_number_100s:sym<Korean> { <name_2_to_9> <suffix_for_100> | <name_of_100> }

    regex worded_number_up_to_100:sym<Korean> { <name_of_10s> [ \h* <name_1_to_10> ]? || <name_up_to_19> }

    token name_of_0:sym<Korean> {'공' | '공'}
    token name_of_1:sym<Korean> {'일' | '일'}
    token name_of_2:sym<Korean> {'이' | '이'}
    token name_of_3:sym<Korean> {'삼' | '삼'}
    token name_of_4:sym<Korean> {'사' | '사'}
    token name_of_5:sym<Korean> {'오' | '오'}
    token name_of_6:sym<Korean> {'육' | '육'}
    token name_of_7:sym<Korean> {'칠' | '칠'}
    token name_of_8:sym<Korean> {'팔' | '팔'}
    token name_of_9:sym<Korean> {'구' | '구'}
    token name_of_10:sym<Korean> {'십' | '십'}
    token name_of_11:sym<Korean> {'십일' | '십일'}
    token name_of_12:sym<Korean> {'십이' | '십이'}
    token name_of_13:sym<Korean> {'십삼' | '십삼'}
    token name_of_14:sym<Korean> {'십사' | '십사'}
    token name_of_15:sym<Korean> {'십오' | '십오'}
    token name_of_16:sym<Korean> {'십육' | '십육'}
    token name_of_17:sym<Korean> {'십칠' | '십칠'}
    token name_of_18:sym<Korean> {'십팔' | '십팔'}
    token name_of_19:sym<Korean> {'십구' | '십구'}
    token name_of_20:sym<Korean> {'이십' | '이십'}
    token name_of_30:sym<Korean> {'삼십' | '삼십'}
    token name_of_40:sym<Korean> {'사십' | '사십'}
    token name_of_50:sym<Korean> {'오십' | '오십'}
    token name_of_60:sym<Korean> {'육십' | '육십'}
    token name_of_70:sym<Korean> {'칠십' | '칠십'}
    token name_of_80:sym<Korean> {'팔십' | '팔십'}
    token name_of_90:sym<Korean> {'구십' | '구십'}
    token name_of_100:sym<Korean> {'백' | '백'}
    token suffix_for_100:sym<Japanese> {'百' | '백'}
    token name_of_1000:sym<Korean> {'천' | '천'}
    token name_of_10000:sym<Korean> {'만' | '만'}
    token name_of_1000000:sym<Korean> {'백만' | '백만'}
    token name_of_bil:sym<Korean> {'십억' | '십억'}
    token name_of_tril:sym<Korean> {'일조' | '일조'}
    token name_of_man:sym<Korean> {'만' }
    token name_of_oku:sym<Korean> {'억' }
    token name_of_cho:sym<Korean> {'조' }

    token worded-number-and-conjunction:sym<Korean> {''}
}