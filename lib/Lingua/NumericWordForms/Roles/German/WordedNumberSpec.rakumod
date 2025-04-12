use v6.d;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::German::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {

    regex preceding-number-separator:sym<German> { \h* | <:Pd> | \h* <:Pd>? <worded-number-and-conjunction> <:Pd>? \h* }
    regex suffix-separator:sym<German> { \h* | <:Pd> }

    regex worded_number_100s:sym<German> {
        | <name_2_to_9> <:Pd>? <suffix_for_100>
        | <name_of_100>
    }

    regex worded_number_up_to_100:sym<German> {
        || <name_of_10s>
        || <name_1_to_10> <:Pd>? <.worded-number-and-conjunction> <:Pd>? <name_of_10s>
        || <name_up_to_19>
    }

    token name_of_0:sym<German> { 'null' }
    token name_of_1:sym<German> { 'eins' | 'ein' }
    token name_of_2:sym<German> { 'zwei' | 'zwo' }
    token name_of_3:sym<German> { 'drei' }
    token name_of_4:sym<German> { 'vier' }
    token name_of_5:sym<German> { 'fünf' }
    token name_of_6:sym<German> { 'sechs' }
    token name_of_7:sym<German> { 'sieben' }
    token name_of_8:sym<German> { 'acht' }
    token name_of_9:sym<German> { 'neun' }
    token name_of_10:sym<German> { 'zehn' }
    token name_of_11:sym<German> { 'elf' }
    token name_of_12:sym<German> { 'zwölf' | 'dutzend' }
    token name_of_13:sym<German> { 'dreizehn' }
    token name_of_14:sym<German> { 'vierzehn' }
    token name_of_15:sym<German> { 'fünfzehn' }
    token name_of_16:sym<German> { 'sechzehn' }
    token name_of_17:sym<German> { 'siebzehn' }
    token name_of_18:sym<German> { 'achtzehn' }
    token name_of_19:sym<German> { 'neunzehn' }
    token name_of_20:sym<German> { 'zwanzig' }
    token name_of_30:sym<German> { 'dreißig' }
    token name_of_40:sym<German> { 'vierzig' }
    token name_of_50:sym<German> { 'fünfzig' | 'fuffzig' }
    token name_of_60:sym<German> { 'sechzig' | 'schock' }
    token name_of_70:sym<German> { 'siebzig' }
    token name_of_80:sym<German> { 'achtzig' }
    token name_of_90:sym<German> { 'neunzig' }
    token name_of_100:sym<German> { 'ein' <:Pd>? 'hundert' | 'hundert' }
    token suffix_for_100:sym<German> { 'hundert' }
    token name_of_1000:sym<German> { 'ein' <:Pd>? 'tausend' | 'tausend' }
    token name_of_10000:sym<German> { 'zehntausend' | 'zehn' <:Pd>? 'tausend' }
    token name_of_1000000:sym<German> {:i 'eine Million' | 'Million' | 'Millionen' }
    token name_of_bil:sym<German> {:i 'eine Milliarde' | 'Milliarde' | 'Milliarden' }
    token name_of_tril:sym<German> {:i 'eine Billion' | 'Billion' | 'Billionen' }

    token worded-number-and-conjunction:sym<German> {'und'}
}