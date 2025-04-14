use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::Romanian::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {

    regex worded_number_100s:sym<Romanian> { <name_2_to_9> <suffix_for_100> | <name_of_100> }

    regex worded_number_up_to_100:sym<Romanian> { <name_of_10s> [[\h* <.worded-number-and-conjunction> \h* | \h+]? <name_1_to_10>]? || <name_up_to_19> }

    token name_of_0:sym<Romanian> { 'zero' | 'zero' }
    token name_of_1:sym<Romanian> { 'unu' | 'o' }
    token name_of_2:sym<Romanian> { 'doi' | 'doi' }
    token name_of_3:sym<Romanian> { 'trei' | 'trei' }
    token name_of_4:sym<Romanian> { 'patru' | 'patru' }
    token name_of_5:sym<Romanian> { 'cinci' | 'cinci' }
    token name_of_6:sym<Romanian> { 'şase' | 'şase' }
    token name_of_7:sym<Romanian> { 'şapte' | 'şapte' }
    token name_of_8:sym<Romanian> { 'opt' | 'opt' }
    token name_of_9:sym<Romanian> { 'nouă' | 'nouă' }
    token name_of_10:sym<Romanian> { 'zece' | 'zece' }
    token name_of_11:sym<Romanian> { 'unsprezece' | 'unsprezece' }
    token name_of_12:sym<Romanian> { 'doisprezece' | 'doisprezece' }
    token name_of_13:sym<Romanian> { 'treisprezece' | 'treisprezece' }
    token name_of_14:sym<Romanian> { 'patrusprezece' | 'patrusprezece' }
    token name_of_15:sym<Romanian> { 'cincisprezece' | 'cincisprezece' }
    token name_of_16:sym<Romanian> { 'şasesprezece' | 'şasesprezece' }
    token name_of_17:sym<Romanian> { 'şaptesprezece' | 'şaptesprezece' }
    token name_of_18:sym<Romanian> { 'optsprezece' | 'optsprezece' }
    token name_of_19:sym<Romanian> { 'nouăsprezece' | 'nouăsprezece' }
    token name_of_20:sym<Romanian> { 'douăzeci' | 'douăzeci' }
    token name_of_30:sym<Romanian> { 'treizeci' | 'treizeci' }
    token name_of_40:sym<Romanian> { 'patruzeci' | 'patruzeci' }
    token name_of_50:sym<Romanian> { 'cincizeci' | 'cincizeci' }
    token name_of_60:sym<Romanian> { 'şasezeci' | 'şasezeci' }
    token name_of_70:sym<Romanian> { 'şaptezeci' | 'şaptezeci' }
    token name_of_80:sym<Romanian> { 'optzeci' | 'optzeci' }
    token name_of_90:sym<Romanian> { 'nouăzeci' | 'nouăzeci' }
    token name_of_100:sym<Romanian> { 'una' \h+ 'sută' | 'o' \h+ 'sută' | 'sută' }
    token suffix_for_100:sym<Romanian>  {'sute'}
    token name_of_1000:sym<Romanian> { 'una mie' | 'una mie' }
    token name_of_10000:sym<Romanian> { 'zece mii' | 'zece mii' }
    token name_of_1000000:sym<Romanian> { 'unu milion' | 'milion' }
    token name_of_bil:sym<Romanian> { 'unu miliard' | 'miliard' }
    token name_of_tril:sym<Romanian> { 'unu bilion' | 'bilion' }

    token worded-number-and-conjunction:sym<Romanian> {'și'}
}