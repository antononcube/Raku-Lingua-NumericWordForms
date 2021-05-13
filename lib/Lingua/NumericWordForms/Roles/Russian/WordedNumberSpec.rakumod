use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::Russian::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {
    
    regex worded_number_100s:sym<Russian> { <name_2_to_9> <suffix_for_100> | <name_of_100> }
    
    regex worded_number_up_to_100:sym<Russian> { <name_of_10s> [ [ \h* <.worded-number-and-conjunction> \h* | \h+ ]? <name_1_to_10> ]? || <name_up_to_19> }

    token name_of_0:sym<Russian> {'ноль'}
    token name_of_1:sym<Russian> {'один' | 'одна' | 'одно' | 'одни'}
    token name_of_2:sym<Russian> {'два' | 'две' | 'двое'}
    token name_of_3:sym<Russian> {'три' | 'трое'}
    token name_of_4:sym<Russian> {'четыре' | 'четверо'}
    token name_of_5:sym<Russian> {'пять' | 'пятеро'}
    token name_of_6:sym<Russian> {'шесть' | 'шестеро'}
    token name_of_7:sym<Russian> {'семь' | 'семеро'}
    token name_of_8:sym<Russian> {'восемь' | 'восьмеро'}
    token name_of_9:sym<Russian> {'девять' | 'девятеро'}
    token name_of_10:sym<Russian> {'десять' | 'десятеро'}
    token name_of_11:sym<Russian> {'одиннадцать' | 'одинаццать'}
    token name_of_12:sym<Russian> {'двенадцать' | 'двенаццать'}
    token name_of_13:sym<Russian> {'тринадцать' | 'тринаццать'}
    token name_of_14:sym<Russian> {'четырнадцать' | 'четырнаццать'}
    token name_of_15:sym<Russian> {'пятнадцать' | 'пятнаццать'}
    token name_of_16:sym<Russian> {'шестнадцать' | 'шеснаццать'}
    token name_of_17:sym<Russian> {'семнадцать' | 'семнаццать'}
    token name_of_18:sym<Russian> {'восемнадцать' | 'восемнаццать'}
    token name_of_19:sym<Russian> {'девятнадцать' | 'девятнаццать'}
    token name_of_20:sym<Russian> {'двадцать' | 'дваццать'}
    token name_of_30:sym<Russian> {'тридцать' | 'триццать'}
    token name_of_40:sym<Russian> {'сорок'}
    token name_of_50:sym<Russian> {'пятьдесят' | 'пийсят'}
    token name_of_60:sym<Russian> {'шестьдесят' | 'шейсят'}
    token name_of_70:sym<Russian> {'семьдесят' | 'семьсят'}
    token name_of_80:sym<Russian> {'восемьдесят' | 'восемьсят'}
    token name_of_90:sym<Russian> {'девяносто'}
    token name_of_100:sym<Russian> {'сто'}
    token suffix_for_100:sym<Russian>  {'ста' | 'сти' | 'сот'}
    token name_of_1000:sym<Russian> { 'тысяч' | 'тысяча' | 'тысячи' | 'тыща' | 'тыщи' }
    token name_of_1000000:sym<Russian> {'миллион' | 'миллиона' | 'миллионов'}
    token name_of_bil:sym<Russian> {'миллиард' | 'миллиарда' | 'миллиардов'}
    token name_of_tril:sym<Russian> {'триллион' | 'триллиона' | 'триллионов'}

    token worded-number-and-conjunction:sym<Russian> {'и'}
}
