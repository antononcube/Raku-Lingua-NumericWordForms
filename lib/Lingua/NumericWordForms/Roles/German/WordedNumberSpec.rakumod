use v6.d;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::German::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {

    regex worded_number_up_to_100:sym<German> {
        || <name_of_10s>
        || <name_1_to_10> <:Pd>? <.worded-number-and-conjunction> <:Pd>? <name_of_10s>
        || <name_up_to_19>
    }

    token name_of_0:sym<German> { 'null' | 'null' }
    token name_of_1:sym<German> { 'eins' | 'ein' }
    token name_of_2:sym<German> { 'zwei' | 'zwei' }
    token name_of_3:sym<German> { 'drei' | 'drei' }
    token name_of_4:sym<German> { 'vier' | 'vier' }
    token name_of_5:sym<German> { 'fünf' | 'fünf' }
    token name_of_6:sym<German> { 'sechs' | 'sechs' }
    token name_of_7:sym<German> { 'sieben' | 'sieben' }
    token name_of_8:sym<German> { 'acht' | 'acht' }
    token name_of_9:sym<German> { 'neun' | 'neun' }
    token name_of_10:sym<German> { 'zehn' | 'zehn' }
    token name_of_11:sym<German> { 'elf' | 'elf' }
    token name_of_12:sym<German> { 'zwölf' | 'zwölf' }
    token name_of_13:sym<German> { 'dreizehn' | 'dreizehn' }
    token name_of_14:sym<German> { 'vierzehn' | 'vierzehn' }
    token name_of_15:sym<German> { 'fünfzehn' | 'fünfzehn' }
    token name_of_16:sym<German> { 'sechzehn' | 'sechzehn' }
    token name_of_17:sym<German> { 'siebzehn' | 'siebzehn' }
    token name_of_18:sym<German> { 'achtzehn' | 'achtzehn' }
    token name_of_19:sym<German> { 'neunzehn' | 'neunzehn' }
    token name_of_20:sym<German> { 'zwanzig' | 'zwanzig' }
    token name_of_30:sym<German> { 'dreißig' | 'dreißig' }
    token name_of_40:sym<German> { 'vierzig' | 'vierzig' }
    token name_of_50:sym<German> { 'fünfzig' | 'fünfzig' }
    token name_of_60:sym<German> { 'sechzig' | 'sechzig' }
    token name_of_70:sym<German> { 'siebzig' | 'siebzig' }
    token name_of_80:sym<German> { 'achtzig' | 'achtzig' }
    token name_of_90:sym<German> { 'neunzig' | 'neunzig' }
    token name_of_100:sym<German> { 'einhundert' | 'hundert' }
    token suffix_for_100:sym<German> { 'hundert' }
    token name_of_1000:sym<German> { 'eintausend' | 'tausend' }
    token name_of_10000:sym<German> { 'zehntausend' | 'zehn-tausend' }
    token name_of_1000000:sym<German> {:i 'eine Million' | 'Million' }
    token name_of_1000000000:sym<German> {:i 'eine Milliarde' | 'Milliarde' }
    token name_of_1000000000000:sym<German> {:i 'eine Billion' | 'Billion' }
    token name_of_bil:sym<German> {:i 'eine Milliarde' | 'Milliarde' }
    token name_of_tril:sym<German> {:i 'eine Billion' | 'Billion' }

    token worded-number-and-conjunction:sym<German> {'und'}
}