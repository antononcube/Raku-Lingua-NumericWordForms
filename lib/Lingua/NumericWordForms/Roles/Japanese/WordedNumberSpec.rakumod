use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::Japanese::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {

    rule numeric-word-form:sym<Japanese> { <worded_number_up_to_kei> }

    regex preceding-number-separator:sym<Japanese>  { \h* }

    regex worded_number_100s:sym<Japanese> { <name_2_to_9> <suffix_for_100> | <name_of_100> }

    regex worded_number_up_to_100:sym<Japanese> { <name_of_10s> [ \h* <name_1_to_10> ]? || <name_up_to_19> }

    token name_of_0:sym<Japanese> {'〇'}
    token name_of_1:sym<Japanese> {'一'}
    token name_of_2:sym<Japanese> {'二'}
    token name_of_3:sym<Japanese> {'三'}
    token name_of_4:sym<Japanese> {'四'}
    token name_of_5:sym<Japanese> {'五'}
    token name_of_6:sym<Japanese> {'六'}
    token name_of_7:sym<Japanese> {'七'}
    token name_of_8:sym<Japanese> {'八'}
    token name_of_9:sym<Japanese> {'九'}
    token name_of_10:sym<Japanese> {'十'}
    token name_of_11:sym<Japanese> {'十一'}
    token name_of_12:sym<Japanese> {'十二'}
    token name_of_13:sym<Japanese> {'十三'}
    token name_of_14:sym<Japanese> {'十四'}
    token name_of_15:sym<Japanese> {'十五'}
    token name_of_16:sym<Japanese> {'十六'}
    token name_of_17:sym<Japanese> {'十七'}
    token name_of_18:sym<Japanese> {'十八'}
    token name_of_19:sym<Japanese> {'十九'}
    token name_of_20:sym<Japanese> {'二十'}
    token name_of_30:sym<Japanese> {'三十'}
    token name_of_40:sym<Japanese> {'四十'}
    token name_of_50:sym<Japanese> {'五十'}
    token name_of_60:sym<Japanese> {'六十'}
    token name_of_70:sym<Japanese> {'七十'}
    token name_of_80:sym<Japanese> {'八十'}
    token name_of_90:sym<Japanese> {'九十'}
    token name_of_100:sym<Japanese> {'百'}
    token suffix_for_100:sym<Japanese> {'百'}
    token name_of_1000:sym<Japanese> {'千'}
    token name_of_10000:sym<Japanese> {'万' | '一万'}
    token name_of_1000000:sym<Japanese> {'百万'}
    token name_of_bil:sym<Japanese> {'十億'}
    token name_of_tril:sym<Japanese> {'一兆'}
    token name_of_sen:sym<Japanese> {'千' | '一千'}
    token name_of_man:sym<Japanese> {'万' | '一万'}
    token name_of_oku:sym<Japanese> {'億' | '一億'}
    token name_of_cho:sym<Japanese> {'兆' | '一兆'}

    token worded-number-and-conjunction:sym<Japanese> {'と'}
}