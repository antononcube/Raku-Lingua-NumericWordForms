use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::French::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {
         
    regex worded_number_100s:sym<French> { <name_1_to_19> <suffix_for_100> | <name_of_100> }
    #regex worded_number_100s:sym<Spanish> { <name_2_to_9> <suffix_for_100> | <name_of_100> }

    regex worded_number_up_to_100:sym<French> {
        [ <name_of_10s> ] [ [ \h* <.hyphen-symbol>? \h* <.worded-number-and-conjunction> \h* <.hyphen-symbol>? \h* | \h* <.hyphen-symbol> \h* | \h+ ]? <name_1_to_19> ]? ||
        <name_up_to_29> }

    token name_of_0:sym<French> {'zéro' | 'zero'}
    token name_of_1:sym<French> {'un'}
    token name_of_2:sym<French> {'deux'}
    token name_of_3:sym<French> {'trois'}
    token name_of_4:sym<French> {'quatre'}
    token name_of_5:sym<French> {'cinq'}
    token name_of_6:sym<French> {'six'}
    token name_of_7:sym<French> {'sept'}
    token name_of_8:sym<French> {'huit'}
    token name_of_9:sym<French> {'neuf'}
    token name_of_10:sym<French> {'dix'}
    token name_of_11:sym<French> {'onze'}
    token name_of_12:sym<French> {'douze'}
    token name_of_13:sym<French> {'treize'}
    token name_of_14:sym<French> {'quatorze'}
    token name_of_15:sym<French> {'quinze'}
    token name_of_16:sym<French> {'seize'}
    token name_of_17:sym<French> {'dix-sept'}
    token name_of_18:sym<French> {'dix-huit'}
    token name_of_19:sym<French> {'dix-neuf'}
    token name_of_20:sym<French> {'vingt'}
    token name_of_21:sym<French> {'vingt-et-un'}
    token name_of_22:sym<French> {'vingt-deux'}
    token name_of_23:sym<French> {'vingt-trois'}
    token name_of_24:sym<French> {'vingt-quatre'}
    token name_of_25:sym<French> {'vingt-cinq'}
    token name_of_26:sym<French> {'vingt-six'}
    token name_of_27:sym<French> {'vingt-sept'}
    token name_of_28:sym<French> {'vingt-huit'}
    token name_of_29:sym<French> {'vingt-neuf'}
    token name_of_30:sym<French> {'trente'}
    token name_of_40:sym<French> {'quarante'}
    token name_of_50:sym<French> {'cinquante'}
    token name_of_60:sym<French> {'soixante'}
    token name_of_70:sym<French> {'soixante-dix'}
    token name_of_80:sym<French> {'quatre-vingts' | 'quatre-vingt'}
    token name_of_90:sym<French> {'quatre-vingt-dix'}
    token name_of_100:sym<French> {'cent'}
    token name_of_200:sym<French> {'deux cents'}
    token name_of_300:sym<French> {'trois cents'}
    token name_of_400:sym<French> {'quatre cents'}
    token name_of_500:sym<French> {'cinq cents'}
    token name_of_600:sym<French> {'six cents'}
    token name_of_700:sym<French> {'sept cents'}
    token name_of_800:sym<French> {'huit cents'}
    token name_of_900:sym<French> {'neuf cents'}
    token name_of_1000:sym<French> {'mille'}
    token name_of_10000:sym<French> {'dix mille'}
    token name_of_1000000:sym<French> {'un million' | 'millions'}
    regex name_of_bil:sym<French> {'un milliard' | 'milliards'}
    token name_of_tril:sym<French> {'un billion' | 'billions'}

    token worded-number-and-conjunction:sym<French> {'et' | '-et-' | '-'}
}