use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::Spanish::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {
         
    regex worded_number_100s:sym<Spanish> { <name_2_to_9> <suffix_for_100> | <name_of_100> }
    
    regex worded_number_up_to_100:sym<Spanish> { <name_of_10s> [ [ \h* <.worded-number-and-conjunction> \h* | \h+ ]? <name_1_to_10> ]? || <name_up_to_29> }

    token name_of_0:sym<Spanish> {'cero'}
    token name_of_1:sym<Spanish> {'uno' | 'un'}
    token name_of_2:sym<Spanish> {'dos'}
    token name_of_3:sym<Spanish> {'tres'}
    token name_of_4:sym<Spanish> {'cuatro'}
    token name_of_5:sym<Spanish> {'cinco' | 'qui'}
    token name_of_6:sym<Spanish> {'seis'}
    token name_of_7:sym<Spanish> {'siete' | 'sete'}
    token name_of_8:sym<Spanish> {'ocho'}
    token name_of_9:sym<Spanish> {'nueve' | 'nove'}
    token name_of_10:sym<Spanish> {'diez'}
    token name_of_11:sym<Spanish> {'once'}
    token name_of_12:sym<Spanish> {'doce'}
    token name_of_13:sym<Spanish> {'trece'}
    token name_of_14:sym<Spanish> {'catorce'}
    token name_of_15:sym<Spanish> {'quince'}
    token name_of_16:sym<Spanish> {'dieciséis'}
    token name_of_17:sym<Spanish> {'diecisiete'}
    token name_of_18:sym<Spanish> {'dieciocho'}
    token name_of_19:sym<Spanish> {'diecinueve'}
    token name_of_20:sym<Spanish> {'veinte'}
    token name_of_21:sym<Spanish> {'veintiuno'}
    token name_of_22:sym<Spanish> {'veintidós'}
    token name_of_23:sym<Spanish> {'veintitrés'}
    token name_of_24:sym<Spanish> {'veinticuatro'}
    token name_of_25:sym<Spanish> {'veinticinco'}
    token name_of_26:sym<Spanish> {'veintiséis'}
    token name_of_27:sym<Spanish> {'veintisiete'}
    token name_of_28:sym<Spanish> {'veintiocho'}
    token name_of_29:sym<Spanish> {'veintinueve'}
    token name_of_30:sym<Spanish> {'treinta'}
    token name_of_40:sym<Spanish> {'cuarenta'}
    token name_of_50:sym<Spanish> {'cincuenta'}
    token name_of_60:sym<Spanish> {'sesenta'}
    token name_of_70:sym<Spanish> {'setenta'}
    token name_of_80:sym<Spanish> {'ochenta'}
    token name_of_90:sym<Spanish> {'noventa'}
    token name_of_100:sym<Spanish> {'cien' | 'ciento'}
    token suffix_for_100:sym<Spanish> {'cientos' | 'nientos'}
    token name_of_1000:sym<Spanish> {'mil'}
    token name_of_1000000:sym<Spanish> {'millón' | 'millon' | 'millones'}
    token name_of_bil:sym<Spanish> {'mil millones'}

    token worded-number-and-conjunction:sym<Spanish> {'y'}
}