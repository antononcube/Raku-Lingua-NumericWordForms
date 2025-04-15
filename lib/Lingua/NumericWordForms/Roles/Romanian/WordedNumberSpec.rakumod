use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::Romanian::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {

    regex suffix-separator:sym<Romanian> {\h+ | \h+ 'de' \h+ }

    regex worded_number_100s:sym<Romanian> { <name_2_to_9> <suffix_for_100> | <name_of_100> }

    regex worded_number_up_to_100:sym<Romanian> { <name_of_10s> [[\h* <.worded-number-and-conjunction> \h* | \h+]? <name_1_to_10>]? || <name_up_to_19> }

    token name_of_0:sym<Romanian> {:m 'zero' | 'zero' }
    token name_of_1:sym<Romanian> {:m 'unu' | 'una' | 'un' | 'o' }
    token name_of_2:sym<Romanian> {:m 'doi' | 'două' }
    token name_of_3:sym<Romanian> {:m 'trei' | 'trei' }
    token name_of_4:sym<Romanian> {:m 'patru' | 'patru' }
    token name_of_5:sym<Romanian> {:m 'cinci' | 'cinci' }
    token name_of_6:sym<Romanian> {:m 'şase' | 'şase' }
    token name_of_7:sym<Romanian> {:m 'şapte' | 'şapte' }
    token name_of_8:sym<Romanian> {:m 'opt' | 'opt' }
    token name_of_9:sym<Romanian> {:m 'nouă' | 'nouă' }
    token name_of_10:sym<Romanian> {:m 'zece' | 'zece' }
    token name_of_11:sym<Romanian> {:m 'unsprezece' | 'unsprezece' }
    token name_of_12:sym<Romanian> {:m 'doisprezece' | 'doisprezece' }
    token name_of_13:sym<Romanian> {:m 'treisprezece' | 'treisprezece' }
    token name_of_14:sym<Romanian> {:m 'patrusprezece' | 'patrusprezece' }
    token name_of_15:sym<Romanian> {:m 'cincisprezece' | 'cincisprezece' }
    token name_of_16:sym<Romanian> {:m 'şasesprezece' | 'şasesprezece' }
    token name_of_17:sym<Romanian> {:m 'şaptesprezece' | 'şaptesprezece' }
    token name_of_18:sym<Romanian> {:m 'optsprezece' | 'optsprezece' }
    token name_of_19:sym<Romanian> {:m 'nouăsprezece' | 'nouăsprezece' }
    token name_of_20:sym<Romanian> {:m 'douăzeci' | 'douăzeci' }
    token name_of_30:sym<Romanian> {:m 'treizeci' | 'treizeci' }
    token name_of_40:sym<Romanian> {:m 'patruzeci' | 'patruzeci' }
    token name_of_50:sym<Romanian> {:m 'cincizeci' | 'cincizeci' }
    token name_of_60:sym<Romanian> {:m 'şasezeci' | 'şasezeci' }
    token name_of_70:sym<Romanian> {:m 'şaptezeci' | 'şaptezeci' }
    token name_of_80:sym<Romanian> {:m 'optzeci' | 'optzeci' }
    token name_of_90:sym<Romanian> {:m 'nouăzeci' | 'nouăzeci' }
    token name_of_100:sym<Romanian> {:m 'una sută' | 'o sută' | 'sută' | 'sute' }
    token suffix_for_100:sym<Romanian> {:m 'sute' | 'suta'}
    token name_of_1000:sym<Romanian> {:m 'una mie' | 'mie' | 'una mii' | 'mii' }
    token name_of_1000000:sym<Romanian> {:m 'unu milion' | 'milion' | 'milion' | 'milioane' }
    token name_of_bil:sym<Romanian> {:m 'unu miliard' | 'miliard' | 'miliarde' }
    token name_of_tril:sym<Romanian> {:m 'unu bilion' | 'bilion' }

    token worded-number-and-conjunction:sym<Romanian> {:m 'și' | 'şi' }
}