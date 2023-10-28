use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::Ukrainian::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {
    
    regex worded_number_100s:sym<Ukrainian> { <name_2_to_9> <suffix_for_100> | <name_of_100> }
    
    regex worded_number_up_to_100:sym<Ukrainian> { <name_of_10s> [ [ \h* <.worded-number-and-conjunction> \h* | \h+ ]? <name_1_to_10> ]? || <name_up_to_19> }

    token name_of_0:sym<Ukrainian> {'нуль'}
    token name_of_1:sym<Ukrainian> {'один'    | 'одна'}
    token name_of_2:sym<Ukrainian> {'два'     | 'дві'  | 'два' }
    token name_of_3:sym<Ukrainian> {'три'}
    token name_of_4:sym<Ukrainian> {'чотири'}
    token name_of_5:sym<Ukrainian> {'пʼять'   | 'пʼят'}
    token name_of_6:sym<Ukrainian> {'шість'   | 'шіст'}
    token name_of_7:sym<Ukrainian> {'сім'}
    token name_of_8:sym<Ukrainian> {'вісім'}
    token name_of_9:sym<Ukrainian> {'девʼять' | 'девʼят' }
    token name_of_10:sym<Ukrainian> {'десять'}
    token name_of_11:sym<Ukrainian> {'одинадцять'}
    token name_of_12:sym<Ukrainian> {'дванадцять'}
    token name_of_13:sym<Ukrainian> {'тринадцять'}
    token name_of_14:sym<Ukrainian> {'чотирнадцять'}
    token name_of_15:sym<Ukrainian> {'пʼятнадцять'}
    token name_of_16:sym<Ukrainian> {'шістнадцять'}
    token name_of_17:sym<Ukrainian> {'сімнадцять'}
    token name_of_18:sym<Ukrainian> {'вісімнадцять'}
    token name_of_19:sym<Ukrainian> {'девʼятнадцять'}
    token name_of_20:sym<Ukrainian> {'двадцять'}
    token name_of_30:sym<Ukrainian> {'тридцять'}
    token name_of_40:sym<Ukrainian> {'сорок'}
    token name_of_50:sym<Ukrainian> {'пʼятдесят'}
    token name_of_60:sym<Ukrainian> {'шістдесят'}
    token name_of_70:sym<Ukrainian> {'сімдесят'}
    token name_of_80:sym<Ukrainian> {'вісімдесят'}
    token name_of_90:sym<Ukrainian> {'девʼяносто'}
    token name_of_100:sym<Ukrainian> {'сто'}
    token suffix_for_100:sym<Ukrainian>  {'ста' | 'сті' | 'сот'}
    token name_of_1000:sym<Ukrainian>  {'тисяча' | 'тисяч' | 'тисячі'}
    token name_of_10000:sym<Ukrainian> {'десять тисяч'}
    token name_of_1000000:sym<Ukrainian> {'мільйон' | 'мільйонів' | 'мільйони'}
    token name_of_bil:sym<Ukrainian>     {'мільярд' | 'мільярдів' | 'мільярди'}
    token name_of_tril:sym<Ukrainian>    {'трильйон' | 'трильйонів' | 'трильйони'}

    token worded-number-and-conjunction:sym<Ukrainian> {'та'}
}