use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::Spanish::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {
         
    regex worded_number_100s:sym<Spanish> { <name_2_to_9> <suffix_for_100> | <name_of_100> }
    
    regex worded_number_up_to_100:sym<Spanish> { <name_of_10s> [ [ \h* <.worded-number-and-conjunction> \h* | \h+ ]? <name_1_to_10> ]? || <name_up_to_29> }

    token name_of_0:sym<Spanish> {'cero' | 'cero'}
    token name_of_1:sym<Spanish> {'uno' | 'un' | 'primero'}
    token name_of_2:sym<Spanish> {'dos' | 'segundo'}
    token name_of_3:sym<Spanish> {'tres' | 'tercero'}
    token name_of_4:sym<Spanish> {'cuatro' | 'cuarto'}
    token name_of_5:sym<Spanish> {'cinco' | 'qui' | 'quinto'}
    token name_of_6:sym<Spanish> {'seis' | 'sexto'}
    token name_of_7:sym<Spanish> {'siete' | 'sete' | 'séptimo'}
    token name_of_8:sym<Spanish> {'ocho' | 'octavo'}
    token name_of_9:sym<Spanish> {'nueve' | 'nove' | 'noveno'}
    token name_of_10:sym<Spanish> {'diez' | 'décimo'}
    token name_of_11:sym<Spanish> {'once' | 'decimoprimero'}
    token name_of_12:sym<Spanish> {'doce' | 'decimosegundo'}
    token name_of_13:sym<Spanish> {'trece' | 'decimotercero'}
    token name_of_14:sym<Spanish> {'catorce' | 'decimocuarto'}
    token name_of_15:sym<Spanish> {'quince' | 'decimoquinto'}
    token name_of_16:sym<Spanish> {'dieciséis' | 'decimosexto'}
    token name_of_17:sym<Spanish> {'diecisiete' | 'decimoséptimo'}
    token name_of_18:sym<Spanish> {'dieciocho' | 'decimoctavo'}
    token name_of_19:sym<Spanish> {'diecinueve' | 'decimonoveno'}
    token name_of_20:sym<Spanish> {'veinte' | 'vigésimo'}
    token name_of_21:sym<Spanish> {'veintiuno' | 'vigésimo primero'}
    token name_of_22:sym<Spanish> {'veintidós' | 'vigésimo segundo'}
    token name_of_23:sym<Spanish> {'veintitrés' | 'vigésimo tercero'}
    token name_of_24:sym<Spanish> {'veinticuatro' | 'vigésimo cuarto'}
    token name_of_25:sym<Spanish> {'veinticinco' | 'vigésimo quinto'}
    token name_of_26:sym<Spanish> {'veintiséis' | 'vigésimo sexto'}
    token name_of_27:sym<Spanish> {'veintisiete' | 'vigésimo séptimo'}
    token name_of_28:sym<Spanish> {'veintiocho' | 'vigésimo octavo'}
    token name_of_29:sym<Spanish> {'veintinueve' | 'vigésimo noveno'}
    token name_of_30:sym<Spanish> {'treinta' | 'trigésimo'}
    token name_of_40:sym<Spanish> {'cuarenta' | 'cuadragésimo'}
    token name_of_50:sym<Spanish> {'cincuenta' | 'quincuagésimo'}
    token name_of_60:sym<Spanish> {'sesenta' | 'sexagésimo'}
    token name_of_70:sym<Spanish> {'setenta' | 'septuagésimo'}
    token name_of_80:sym<Spanish> {'ochenta' | 'octogésimo'}
    token name_of_90:sym<Spanish> {'noventa' | 'nonagésimo'}
    token name_of_100:sym<Spanish> {'cien' | 'ciento' | 'centésimo'}
    token suffix_for_100:sym<Spanish> {'cientos' | 'nientos' }
    token name_of_1000:sym<Spanish> {'mil' | 'milésimo'}
    token name_of_1000000:sym<Spanish> {'millón' | 'millon' | 'millones' | 'millonésimo'}
    token name_of_bil:sym<Spanish> {'mil millones' | 'mil millonésimo'}
    token name_of_tril:sym<Spanish> {'billón' | 'billonésimo'}

    token worded-number-and-conjunction:sym<Spanish> {'y'}
}