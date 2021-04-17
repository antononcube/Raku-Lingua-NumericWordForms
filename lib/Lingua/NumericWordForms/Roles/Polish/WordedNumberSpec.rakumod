use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::Polish::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {
    
    regex worded_number_100s:sym<Polish> { <name_2_to_9> <suffix_for_100> | <name_of_100> }
    
    regex worded_number_up_to_100:sym<Polish> { <name_of_10s> [ [ \h* <.worded-number-and-conjunction> \h* | \h+ ]? <name_1_to_10> ]? || <name_up_to_19> }

    token name_of_0:sym<Polish> {'zero'}
    token name_of_1:sym<Polish> {'jeden'}
    token name_of_2:sym<Polish> {'dwa' | 'dwie'}
    token name_of_3:sym<Polish> {'trzy'}
    token name_of_4:sym<Polish> {'cztery'}
    token name_of_5:sym<Polish> {'pięć'}
    token name_of_6:sym<Polish> {'sześć'}
    token name_of_7:sym<Polish> {'siedem'}
    token name_of_8:sym<Polish> {'osiem'}
    token name_of_9:sym<Polish> {'dziewięć'}
    token name_of_10:sym<Polish> {'dziesięć'}
    token name_of_11:sym<Polish> {'jedenaście'}
    token name_of_12:sym<Polish> {'dwanaście'}
    token name_of_13:sym<Polish> {'trzynaście'}
    token name_of_14:sym<Polish> {'czternaście'}
    token name_of_15:sym<Polish> {'piętnaście'}
    token name_of_16:sym<Polish> {'szesnaście'}
    token name_of_17:sym<Polish> {'siedemnaście'}
    token name_of_18:sym<Polish> {'osiemnaście'}
    token name_of_19:sym<Polish> {'dziewiętnaście'}
    token name_of_20:sym<Polish> {'dwadzieścia'}
    token name_of_30:sym<Polish> {'trzydzieści'}
    token name_of_40:sym<Polish> {'czterdzieści'}
    token name_of_50:sym<Polish> {'pięćdziesiąt'}
    token name_of_60:sym<Polish> {'sześćdziesiąt'}
    token name_of_70:sym<Polish> {'siedemdziesiąt'}
    token name_of_80:sym<Polish> {'osiemdziesiąt'}
    token name_of_90:sym<Polish> {'dziewięćdziesiąt'}
    token name_of_100:sym<Polish> {'sto'}
    token suffix_for_100:sym<Polish>  {'sta' | 'cie' | 'ście' | 'set'}
    token name_of_1000:sym<Polish> {'tysiąc' | 'tysiące' | 'tysięcy'}
    token name_of_1000000:sym<Polish> {'milion' | 'milionów' | 'miliony' }
    token name_of_bil:sym<Polish> {'miliard' | 'miliardów' | 'miliardy'}
    token name_of_tril:sym<Polish> {'bilion' | 'bilionów' | 'biliony'}

    token worded-number-and-conjunction:sym<Polish> {'i'}
}