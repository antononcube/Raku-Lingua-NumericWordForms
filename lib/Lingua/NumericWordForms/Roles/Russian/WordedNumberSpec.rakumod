use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::Russian::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {
    
    regex worded_number_100s:sym<Russian> { <name_2_to_9> <suffix_for_100> | <name_of_100> }
    
    regex worded_number_up_to_100:sym<Russian> { <name_of_10s> [ [ \h* <.worded-number-and-conjunction> \h* | \h+ ]? <name_1_to_10> ]? || <name_up_to_19> }

    token name_of_0:sym<Russian> {'ноль'}
    token name_of_1:sym<Russian> {'один' | 'одна'}
    token name_of_2:sym<Russian> {'два' | 'две'}
    token name_of_3:sym<Russian> {'три'}
    token name_of_4:sym<Russian> {'четыре'}
    token name_of_5:sym<Russian> {'пять'}
    token name_of_6:sym<Russian> {'шесть'}
    token name_of_7:sym<Russian> {'семь'}
    token name_of_8:sym<Russian> {'восемь'}
    token name_of_9:sym<Russian> {'девять'}
    token name_of_10:sym<Russian> {'десять'}
    token name_of_11:sym<Russian> {'одиннадцать'}
    token name_of_12:sym<Russian> {'двенадцать'}
    token name_of_13:sym<Russian> {'тринадцать'}
    token name_of_14:sym<Russian> {'четырнадцать'}
    token name_of_15:sym<Russian> {'пятнадцать'}
    token name_of_16:sym<Russian> {'шестнадцать'}
    token name_of_17:sym<Russian> {'семнадцать'}
    token name_of_18:sym<Russian> {'восемнадцать'}
    token name_of_19:sym<Russian> {'девятнадцать'}
    token name_of_20:sym<Russian> {'двадцать'}
    token name_of_30:sym<Russian> {'тридцать'}
    token name_of_40:sym<Russian> {'сорок'}
    token name_of_50:sym<Russian> {'пятьдесят' | 'пятдесят' | 'пийсят'}
    token name_of_60:sym<Russian> {'шестьдесят'}
    token name_of_70:sym<Russian> {'семьдесят'}
    token name_of_80:sym<Russian> {'восемьдесят'}
    token name_of_90:sym<Russian> {'девяносто'}
    token name_of_100:sym<Russian> {'сто'}
    token suffix_for_100:sym<Russian>  {'ста' | 'сти' | 'сот'}
    token name_of_1000:sym<Russian> { 'тысяч' | 'тысяча' | 'тысячи'}
    token name_of_1000000:sym<Russian> {'миллион' | 'миллиона' | 'миллионов' }
    token name_of_bil:sym<Russian> {'миллиард' | 'миллиарда' | 'миллиардов'}
    token name_of_tril:sym<Russian> {'триллион' | 'триллиона' | 'триллионов'}

    token worded-number-and-conjunction:sym<Russian> {'и'}
}