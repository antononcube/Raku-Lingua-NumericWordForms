use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {
    
    regex worded_number_100s:sym<Bulgarian> { <name_2_to_9> <suffix_for_100> | <name_of_100> }
    
    regex worded_number_up_to_100:sym<Bulgarian> { <name_of_10s> [ [ \h* <.worded-number-and-conjunction> \h* | \h+ ]? <name_1_to_10> ]? || <name_up_to_19> }

    token name_of_0:sym<Bulgarian>  {'нула'   | 'нулев'    | 'нулева'}
    token name_of_1:sym<Bulgarian>  {'едно'   | 'един'     | 'първи' | 'първа'}
    token name_of_2:sym<Bulgarian>  {'две'    | 'два'      | 'втори' | 'втора'}
    token name_of_3:sym<Bulgarian>  {'три'    | 'трети'    | 'трета'}
    token name_of_4:sym<Bulgarian>  {'четири' | 'четвърти' | 'четвърта'}
    token name_of_5:sym<Bulgarian>  {'пет'    | 'пети'     | 'пета'}
    token name_of_6:sym<Bulgarian>  {'шест'   | 'шести'    | 'шеста'}
    token name_of_7:sym<Bulgarian>  {'седем'  | 'седми'    | 'седма'}
    token name_of_8:sym<Bulgarian>  {'осем'   | 'осми'     | 'осма'}
    token name_of_9:sym<Bulgarian>  {'девет'  | 'девети'   | 'девета' }
    token name_of_10:sym<Bulgarian> {'десет'  | 'десети'   | 'десета' }
    token name_of_11:sym<Bulgarian> {'единадесет'    | 'единайсе'    | 'единайсет'}
    token name_of_12:sym<Bulgarian> {'дванадесет'    | 'дванайсе'    | 'дванайсет'}
    token name_of_13:sym<Bulgarian> {'тринадесет'    | 'тринайсе'    | 'тринайсет'}
    token name_of_14:sym<Bulgarian> {'четиринадесет' | 'четиринайсе' | 'четиринайсет'}
    token name_of_15:sym<Bulgarian> {'петнадесет'    | 'петнайсе'    | 'петнайсет'}
    token name_of_16:sym<Bulgarian> {'шестнадесет'   | 'шеснайсе'    | 'шестнайсет'}
    token name_of_17:sym<Bulgarian> {'седемнадесет'  | 'седемнайсе'  | 'седемнайсет' }
    token name_of_18:sym<Bulgarian> {'осемнадесет'   | 'осемнайсе'   | 'осемнайсет'}
    token name_of_19:sym<Bulgarian> {'деветнадесет'  | 'деветнайсе'  | 'деветнайсет'}
    token name_of_20:sym<Bulgarian> {'двадесет'      | 'двайсе'      | 'двайсет'}
    token name_of_30:sym<Bulgarian> {'тридесет'      | 'трийсе'      | 'трийсет'}
    token name_of_40:sym<Bulgarian> {'четиридесет'   | 'четирсе'     | 'четирсет' | 'четирийсет'}
    token name_of_50:sym<Bulgarian> {'петдесет'      | 'петдесе'}
    token name_of_60:sym<Bulgarian> {'шестдесет'     | 'шейсе'       | 'шейсет'}
    token name_of_70:sym<Bulgarian> {'седемдесет'    | 'седемдесе'}
    token name_of_80:sym<Bulgarian> {'осемдесет'     | 'осемдесе'}
    token name_of_90:sym<Bulgarian> {'деветдесет'    | 'деведесе'    | 'деведесет'}
    token name_of_100:sym<Bulgarian>     {'сто'}
    token suffix_for_100:sym<Bulgarian>  {'ста' | 'стотин'}
    token name_of_1000:sym<Bulgarian>    {'хиляда' | 'хиляди'}
    token name_of_1000000:sym<Bulgarian> {'милион' | 'милиона'}
    token name_of_bil:sym<Bulgarian>     {'милиард' | 'милиарда'}
    token name_of_tril:sym<Bulgarian>    {'трилион' | 'трилиона'}

    token worded-number-and-conjunction:sym<Bulgarian> {'и'}
}