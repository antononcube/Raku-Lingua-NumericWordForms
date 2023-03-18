use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::Azerbaijani::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {

    regex worded_number_100s:sym<Azerbaijani> { <name_2_to_9> <suffix_for_100> | <name_of_100> }

    regex worded_number_up_to_100:sym<Azerbaijani> { <name_of_10s> [[\h* <.worded-number-and-conjunction> \h* | \h+]? <name_1_to_10>]? || <name_up_to_19> }

    token name_of_0:sym<Azerbaijani> { 'sıfır' | 'sıfır' }
    token name_of_1:sym<Azerbaijani> { 'bir' | 'бир' }
    token name_of_2:sym<Azerbaijani> { 'iki' | 'ики' }
    token name_of_3:sym<Azerbaijani> { 'üç' | 'үч' }
    token name_of_4:sym<Azerbaijani> { 'dörd' | 'дөрд' }
    token name_of_5:sym<Azerbaijani> { 'beş' | 'беш' }
    token name_of_6:sym<Azerbaijani> { 'altı' | 'алты' }
    token name_of_7:sym<Azerbaijani> { 'yeddi' | 'жедди' }
    token name_of_8:sym<Azerbaijani> { 'səkkiz' | 'сәккиз' }
    token name_of_9:sym<Azerbaijani> { 'doqquz' | 'доггуз' }
    token name_of_10:sym<Azerbaijani> { 'on' | 'он' }
    token name_of_11:sym<Azerbaijani> { 'on' \h+ 'bir' | 'он' \h+ 'бир' }
    token name_of_12:sym<Azerbaijani> { 'on' \h+ 'iki' | 'он' \h+ 'ики' }
    token name_of_13:sym<Azerbaijani> { 'on' \h+ 'üç' | 'он' \h+ 'уч' }
    token name_of_14:sym<Azerbaijani> { 'on' \h+ 'dörd' | 'он' \h+ 'дөрд' }
    token name_of_15:sym<Azerbaijani> { 'on' \h+ 'beş' | 'он' \h+ 'беш' }
    token name_of_17:sym<Azerbaijani> { 'on' \h+ 'yeddi' | 'он' \h+ ' жедди' }
    token name_of_18:sym<Azerbaijani> { 'on' \h+ 'səkkiz' | 'он' \h+ 'сәккиз' }
    token name_of_19:sym<Azerbaijani> { 'on' \h+ 'doqquz' | 'он' \h+ 'доггуз' }
    token name_of_20:sym<Azerbaijani> { 'iyirmi' | 'ижирми' }
    token name_of_30:sym<Azerbaijani> { 'otuz' | 'отуз' }
    token name_of_40:sym<Azerbaijani> { 'qırx' | 'qырx' }
    token name_of_50:sym<Azerbaijani> { 'əlli' | 'әлли' }
    token name_of_60:sym<Azerbaijani> { 'atmış' | 'алтмыш' }
    token name_of_70:sym<Azerbaijani> { 'yetmiş' | 'жетмиш' }
    token name_of_80:sym<Azerbaijani> { 'səqsən' | 'сәксән' }
    token name_of_90:sym<Azerbaijani> { 'doxsan' | 'доxсан' }
    token name_of_100:sym<Azerbaijani> { 'yüz' | 'жүз' }
    token name_of_1000:sym<Azerbaijani> { 'min' | 'мин' }
    token name_of_10000:sym<Azerbaijani> { 'on' \h+ 'min' | 'on' \h+ 'min' }
    token name_of_1000000:sym<Azerbaijani> { 'milyon' | 'милжон' }
    token name_of_bil:sym<Azerbaijani> { 'milyard' | 'милжар' }
    token name_of_tril:sym<Azerbaijani> { 'trilyon' | 'трилжон' }
}