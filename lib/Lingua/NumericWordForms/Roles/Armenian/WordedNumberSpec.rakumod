use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::Armenian::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {

    regex preceding-number-separator:sym<Armenian> { \h* | <:Pd> | \h* <:Pd>? <worded-number-and-conjunction> <:Pd>? \h* }
    regex suffix-separator:sym<Armenian> { \h* | <:Pd> }

    regex worded_number_100s:sym<Armenian> { <name_2_to_9> <:Pd>? <suffix_for_100> | <name_of_100> }

    regex worded_number_up_to_100:sym<Armenian> { <name_of_10s> [<.preceding-number-separator> <name_1_to_10>]? || <name_up_to_19> }

    token name_of_0:sym<Armenian> { 'զրո' | 'զրո' }
    token name_of_1:sym<Armenian> { 'մեկ' | 'մեկ' }
    token name_of_2:sym<Armenian> { 'երկու' | 'երկու' }
    token name_of_3:sym<Armenian> { 'երեք' | 'երեք' }
    token name_of_4:sym<Armenian> { 'չորս' | 'չորս' }
    token name_of_5:sym<Armenian> { 'հինգ' | 'հինգ' }
    token name_of_6:sym<Armenian> { 'վեց' | 'վեց' }
    token name_of_7:sym<Armenian> { 'յոթ' | 'յոթ' }
    token name_of_8:sym<Armenian> { 'ութ' | 'ութ' }
    token name_of_9:sym<Armenian> { 'ինը' | 'ինը' }
    token name_of_10:sym<Armenian> { 'տասն' | 'տասն' }
    token name_of_11:sym<Armenian> {'տասնմեկ' | 'տասն-մեկ'}
    token name_of_12:sym<Armenian> {'տասներկու' | 'տասն-երկու'}
    token name_of_13:sym<Armenian> {'տասներեք' | 'տասն-երեք'}
    token name_of_14:sym<Armenian> {'տասնչորս' | 'տասն-չորս'}
    token name_of_15:sym<Armenian> {'տասնհինգ' | 'տասն-հինգ'}
    token name_of_16:sym<Armenian> {'տասնվեց' | 'տասն-վեց'}
    token name_of_17:sym<Armenian> {'տասնյոթ' | 'տասն-յոթ'}
    token name_of_18:sym<Armenian> {'տասնութ' | 'տասն-ութ'}
    token name_of_19:sym<Armenian> {'տասնինը' | 'տասն-ինը'}
    token name_of_20:sym<Armenian> {'քսան' | 'քսան'}
    token name_of_30:sym<Armenian> {'երեսուն' | 'երեսուն'}
    token name_of_40:sym<Armenian> {'քառասուն' | 'քառասուն'}
    token name_of_50:sym<Armenian> {'հիսուն' | 'հիսուն'}
    token name_of_60:sym<Armenian> {'վաթսուն' | 'վաթսուն'}
    token name_of_70:sym<Armenian> {'յոթանասուն' | 'յոթանասուն'}
    token name_of_80:sym<Armenian> {'ութսուն' | 'ութսուն'}
    token name_of_90:sym<Armenian> {'իննասուն' | 'իննասուն'}
    token name_of_100:sym<Armenian> {'մեկ-հարյուր' | 'մեկ' 'հարյուր' | 'հարյուր'}
    token suffix_for_100:sym<Armenian> {'հարյուր'}
    token name_of_1000:sym<Armenian> { 'մեկ' [<:Pd> | \h+] 'հազար' | 'հազար' }
    token name_of_10000:sym<Armenian> { 'տասն' [<:Pd> | \h+] 'հազար' }
    token name_of_1000000:sym<Armenian> { 'մեկ' [<:Pd> | \h+] 'միլիօն' | 'միլիօն' }
    token name_of_bil:sym<Armenian> { 'մեկ' [<:Pd> | \h+] 'միլիար' | 'միլիար' }
    token name_of_tril:sym<Armenian> { 'մեկ' [<:Pd> | \h+] 'բիլիօն' | 'բիլիօն' }

    token worded-number-and-conjunction:sym<Armenian> {'և'}
}