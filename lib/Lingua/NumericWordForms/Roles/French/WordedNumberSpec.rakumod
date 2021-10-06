use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::French::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {
         
    regex worded_number_100s:sym<French> { <name_1_to_19> <suffix_for_100> | <name_of_100> }
    #regex worded_number_100s:sym<Spanish> { <name_2_to_9> <suffix_for_100> | <name_of_100> }

    regex worded_number_up_to_100:sym<French> {
        [ <name_of_10s> ] [ [ \h* <.hyphen-symbol>? \h* <.worded-number-and-conjunction> \h* <.hyphen-symbol>? \h* | \h* <.hyphen-symbol> \h* | \h+ ]? <name_1_to_19> ]? ||
        <name_up_to_29> }

    token name_of_0:sym<French> {'zéro' | 'zero' | 'zéroième'}
    token name_of_1:sym<French> {'un' | 'premier'}
    token name_of_2:sym<French> {'deux' | 'deuxième'}
    token name_of_3:sym<French> {'trois' | 'troisième'}
    token name_of_4:sym<French> {'quatre' | 'quatrième'}
    token name_of_5:sym<French> {'cinq' | 'cinquième'}
    token name_of_6:sym<French> {'six' | 'sixième'}
    token name_of_7:sym<French> {'sept' | 'septième'}
    token name_of_8:sym<French> {'huit' | 'huitième'}
    token name_of_9:sym<French> {'neuf' | 'neuvième'}
    token name_of_10:sym<French> {'dix' | 'dixième'}
    token name_of_11:sym<French> {'onze' | 'onzième'}
    token name_of_12:sym<French> {'douze' | 'douzième'}
    token name_of_13:sym<French> {'treize' | 'treizième'}
    token name_of_14:sym<French> {'quatorze' | 'quatorzième'}
    token name_of_15:sym<French> {'quinze' | 'quinzième'}
    token name_of_16:sym<French> {'seize' | 'seizième'}
    token name_of_17:sym<French> {'dix-sept' | 'dix-septième'}
    token name_of_18:sym<French> {'dix-huit' | 'dix-huitième'}
    token name_of_19:sym<French> {'dix-neuf' | 'dix-neuvième'}
    token name_of_20:sym<French> {'vingt' | 'vingtième'}
    token name_of_21:sym<French> {'vingt-et-un' | 'vingt-et-unième'}
    token name_of_22:sym<French> {'vingt-deux' | 'vingt-deuxième'}
    token name_of_23:sym<French> {'vingt-trois' | 'vingt-troisième'}
    token name_of_24:sym<French> {'vingt-quatre' | 'vingt-quatrième'}
    token name_of_25:sym<French> {'vingt-cinq' | 'vingt-cinquième'}
    token name_of_26:sym<French> {'vingt-six' | 'vingt-sixième'}
    token name_of_27:sym<French> {'vingt-sept' | 'vingt-septième'}
    token name_of_28:sym<French> {'vingt-huit' | 'vingt-huitième'}
    token name_of_29:sym<French> {'vingt-neuf' | 'vingt-neuvième'}
    token name_of_30:sym<French> {'trente' | 'trentième'}
    token name_of_40:sym<French> {'quarante' | 'quarantième'}
    token name_of_50:sym<French> {'cinquante' | 'cinquantième'}
    token name_of_60:sym<French> {'soixante' | 'soixantième'}
    token name_of_70:sym<French> {'soixante-dix' | 'soixante-dixième'}
    token name_of_80:sym<French> {'quatre-vingts' | 'quatre-vingt' | 'quatre-vingtième'}
    token name_of_90:sym<French> {'quatre-vingt-dix' | 'quatre-vingt-dixième'}
    token name_of_100:sym<French> {'cent' | 'centième'}
    token name_of_200:sym<French> {'deux cents' | 'deux centième'}
    token name_of_300:sym<French> {'trois cents' | 'trois centième'}
    token name_of_400:sym<French> {'quatre cents' | 'quatre centième'}
    token name_of_500:sym<French> {'cinq cents' | 'cinq centième'}
    token name_of_600:sym<French> {'six cents' | 'six centième'}
    token name_of_700:sym<French> {'sept cents' | 'sept centième'}
    token name_of_800:sym<French> {'huit cents' | 'huit centième'}
    token name_of_900:sym<French> {'neuf cents' | 'neuf centième'}
    token name_of_1000:sym<French> {'mille' | 'millième'}
    token name_of_10000:sym<French> {'dix mille' | 'dix millième'}
    token name_of_1000000:sym<French> {'un million' | 'millions' | 'un millionième' | 'millionième'}
    token name_of_bil:sym<French> {'un milliard' | 'milliards' | 'un milliardième'}
    token name_of_tril:sym<French> {'un billion' | 'billions' | 'un billionième'}

    token suffix_for_100:sym<French> {'cent'}
    token worded-number-and-conjunction:sym<French> {'et' | '-et-' | '-'}
}