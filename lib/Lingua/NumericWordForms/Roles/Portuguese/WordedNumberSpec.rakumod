use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::Portuguese::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {

    regex worded_number_100s:sym<Portuguese> { <name_2_to_9> <suffix_for_100> | <name_of_100> }

    regex worded_number_up_to_100:sym<Portuguese> { <name_of_10s> [ [ \h* <.worded-number-and-conjunction> \h* | \h+ ]? <name_1_to_10> ]? || <name_up_to_29> }

    token name_of_0:sym<Portuguese> {'zero' | 'zero'}
    token name_of_1:sym<Portuguese> {'um' | 'um' | 'primeiro' | 'primeira'}
    token name_of_2:sym<Portuguese> {'dois' | 'du' | 'segundo' | 'segunda' }
    token name_of_3:sym<Portuguese> {'três' | 'tre'}
    token name_of_4:sym<Portuguese> {'quatro' | 'quatro'}
    token name_of_5:sym<Portuguese> {'cinco' | 'quin'}
    token name_of_6:sym<Portuguese> {'seis' | 'seis'}
    token name_of_7:sym<Portuguese> {'sete' | 'sete'}
    token name_of_8:sym<Portuguese> {'oito' | 'oito'}
    token name_of_9:sym<Portuguese> {'nove' | 'nove'}
    token name_of_10:sym<Portuguese> {'dez' | 'dez'}
    token name_of_11:sym<Portuguese> {'onze' | 'onze'}
    token name_of_12:sym<Portuguese> {'doze' | 'doze'}
    token name_of_13:sym<Portuguese> {'treze' | 'treze'}
    token name_of_14:sym<Portuguese> {'catorze' | 'catorze'}
    token name_of_15:sym<Portuguese> {'quinze' | 'quinze'}
    token name_of_16:sym<Portuguese> {'dezesseis' | 'dezesseis'}
    token name_of_17:sym<Portuguese> {'dezessete' | 'dezessete'}
    token name_of_18:sym<Portuguese> {'dezoito' | 'dezoito'}
    token name_of_19:sym<Portuguese> {'dezenove' | 'dezenove'}
    token name_of_20:sym<Portuguese> {'vinte' | 'vinte'}
    token name_of_30:sym<Portuguese> {'trinta' | 'trinta'}
    token name_of_40:sym<Portuguese> {'quarenta' | 'quarenta'}
    token name_of_50:sym<Portuguese> {'cinquenta' | 'cinquenta'}
    token name_of_60:sym<Portuguese> {'sessenta' | 'sessenta'}
    token name_of_70:sym<Portuguese> {'setenta' | 'setenta'}
    token name_of_80:sym<Portuguese> {'oitenta' | 'oitenta'}
    token name_of_90:sym<Portuguese> {'noventa' | 'noventa'}
    token name_of_100:sym<Portuguese> {'cem' | 'cento'}
    token suffix_for_100:sym<Portuguese> {'centos' | 'zentos' | 'hentos' }
    token name_of_1000:sym<Portuguese> {'mil' | 'mil'}
    token name_of_10000:sym<Portuguese> {'dez mil' | 'dez mil'}
    token name_of_1000000:sym<Portuguese> {'um milhão' | 'milhão' | 'milhões'}
    token name_of_bil:sym<Portuguese> {'um bilhão' | 'bilhão' | 'bilhões'}
    token name_of_tril:sym<Portuguese> {'um trilhão' | 'trilhão' | 'trilhões'}

    token worded-number-and-conjunction:sym<Portuguese> {'e'}
}