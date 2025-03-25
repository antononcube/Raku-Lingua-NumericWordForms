use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::Kazakh::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {

    regex worded_number_100s:sym<Kazakh> { <name_2_to_9> <suffix_for_100> | <name_of_100> }

    token name_of_0:sym<Kazakh> { 'nöl' | 'нөл'}
    token name_of_1:sym<Kazakh> { 'bir' | 'бір' }
    token name_of_2:sym<Kazakh> { 'eki' | 'екі' }
    token name_of_3:sym<Kazakh> { 'üş' | 'үш' }
    token name_of_4:sym<Kazakh> { 'tört' | 'төрт' }
    token name_of_5:sym<Kazakh> { 'bes' | 'бес' }
    token name_of_6:sym<Kazakh> { 'altı' | 'алты' }
    token name_of_7:sym<Kazakh> { 'jeti' | 'жетi' }
    token name_of_8:sym<Kazakh> { 'segiz' | 'сегіз'}
    token name_of_9:sym<Kazakh> { 'toğız' | 'тоғыз' }
    token name_of_10:sym<Kazakh> { 'on' | 'он' }
    token name_of_11:sym<Kazakh> { 'on' \h+ 'bir' | 'он' \h+ 'бир' }
    token name_of_12:sym<Kazakh> { 'on' \h+ 'eki' | 'он' \h+ 'еки' }
    token name_of_13:sym<Kazakh> { 'on' \h+ 'üç' | 'он' \h+ 'үш' }
    token name_of_14:sym<Kazakh> { 'on' \h+ 'tört' | 'он' \h+ 'төрт' }
    token name_of_15:sym<Kazakh> { 'on' \h+ 'bes' | 'он' \h+ 'бес' }
    token name_of_16:sym<Kazakh> { 'on' \h+ 'altı' | 'он' \h+ 'алты' }
    token name_of_17:sym<Kazakh> { 'on' \h+ 'jeti' | 'он' \h+ 'жетi' }
    token name_of_18:sym<Kazakh> { 'on' \h+ 'segiz' | 'он' \h+ 'сәгiз' }
    token name_of_19:sym<Kazakh> { 'on' \h+ 'toğız' | 'он' \h+ 'тогыз' }
    token name_of_20:sym<Kazakh> { 'jïırma' | 'жиырма' }
    token name_of_30:sym<Kazakh> { 'otız' | 'отыз' }
    token name_of_40:sym<Kazakh> { 'qırıq' | 'қырық' }
    token name_of_50:sym<Kazakh> { 'elw' | 'елу' }
    token name_of_60:sym<Kazakh> { 'alpıs' | 'алпыс' }
    token name_of_70:sym<Kazakh> { 'jetpis' | 'жетпіс' }
    token name_of_80:sym<Kazakh> { 'seksen' | 'сексен' }
    token name_of_90:sym<Kazakh> { 'toqsan' | 'тоқсан' }
    token name_of_100:sym<Kazakh> { 'jüz' | 'жүз' }
    token name_of_1000:sym<Kazakh> { 'mıñ' | 'мың' }
    token name_of_10000:sym<Kazakh> { 'on' \h+ 'min' | 'on' \h+ 'min' }
    token name_of_1000000:sym<Kazakh> { 'mïllïon' | 'миллион' }
    token name_of_bil:sym<Kazakh> { 'mïllïard' | 'миллиард' }
    token name_of_tril:sym<Kazakh> { 'trillïon' | 'триллион' }

    token worded-number-and-conjunction:sym<Kazakh> {'və'}
}