use v6;

# The first version of this role/grammar was made in 2018 using Mathematica and EBNF.
# See this file:
#   https://github.com/antononcube/ConversationalAgents/blob/master/EBNF/General/Mathematica/WordedNumbersGrammar.m

role Lingua::NumericWordForms::Roles::WordedNumberSpec {

    rule numeric-word-form { <worded_number_up_to_quad> }

    proto token worded_number_100s {*}
    regex worded_number_100s:sym<General> { <name_1_to_19> \h+ <name_of_100> | <name_of_100> }

    regex worded_number_1000s    { [ <worded_number_up_to_1000>    \h+ ]? <name_of_1000> }
    regex worded_number_1000000s { [ <worded_number_up_to_1000000> \h+ ]? <name_of_1000000> }
    regex worded_number_bils     { [ <worded_number_up_to_bil>     \h+ ]? <name_of_bil> }
    regex worded_number_trils    { [ <worded_number_up_to_tril>    \h+ ]? <name_of_tril> }

    proto token worded_number_up_to_100 {*}
    regex worded_number_up_to_100:sym<General> { <name_of_10s> [ [ \h* <.hyphen-symbol> \h* | \h+ ]? <name_1_to_10> ]? || <name_up_to_19> }

    regex worded_number_up_to_1000    { <worded_number_100s>      [ [ [ \h+ <.worded-number-and-conjunction> \h+ ] | \h* ',' \h+ | \h+ ]? <worded_number_up_to_100> ]?     || <worded_number_up_to_100> }
    regex worded_number_up_to_1000000 { <worded_number_1000s>     [ [ [ \h+ <.worded-number-and-conjunction> \h+ ] | \h* ',' \h+ | \h+ ]? <worded_number_up_to_1000> ]?    || <worded_number_up_to_1000> }
    regex worded_number_up_to_bil     { <worded_number_1000000s>  [ [ [ \h+ <.worded-number-and-conjunction> \h+ ] | \h* ',' \h+ | \h+ ]? <worded_number_up_to_1000000> ]? || <worded_number_up_to_1000000> }
    regex worded_number_up_to_tril    { <worded_number_bils>      [ [ [ \h+ <.worded-number-and-conjunction> \h+ ] | \h* ',' \h+ | \h+ ]? <worded_number_up_to_bil> ]?     || <worded_number_up_to_bil> }
    regex worded_number_up_to_quad    { <worded_number_trils>     [ [ [ \h+ <.worded-number-and-conjunction> \h+ ] | \h* ',' \h+ | \h+ ]? <worded_number_up_to_tril> ]?    || <worded_number_up_to_tril> }

    token name_1_to_10 { <name_of_1> | <name_of_2> | <name_of_3> | <name_of_4> | <name_of_5> | <name_of_6> | <name_of_7> | <name_of_8> | <name_of_9> | <name_of_10> }
    token name_2_to_9  {               <name_of_2> | <name_of_3> | <name_of_4> | <name_of_5> | <name_of_6> | <name_of_7> | <name_of_8> | <name_of_9> }
    token name_1_to_19 {
        <name_of_1>  | <name_of_2>  | <name_of_3>  | <name_of_4>  | <name_of_5>  | <name_of_6>  | <name_of_7>  | <name_of_8>  | <name_of_9> | <name_of_10> |
        <name_of_11> | <name_of_12> | <name_of_13> | <name_of_14> | <name_of_15> | <name_of_16> | <name_of_17> | <name_of_18> | <name_of_19> }
    token name_up_to_19 { <name_of_0> | <name_1_to_19> }
    token name_20_to_29 {
        <name_of_20> | <name_of_21> | <name_of_22> | <name_of_23> | <name_of_24> | <name_of_25> | <name_of_26> | <name_of_27> | <name_of_28> | <name_of_29> }
    token name_up_to_29 { <name_of_0> | <name_1_to_19> | <name_20_to_29> }

    token name_of_10s { <name_of_20> | <name_of_30> | <name_of_40> | <name_of_50> | <name_of_60> | <name_of_70> | <name_of_80> | <name_of_90> }

    proto token name_of_0 {*}
    token name_of_0:sym<General> {'0'}

    proto token name_of_1 {*}
    token name_of_1:sym<General> {'1'}

    proto token name_of_2 {*}
    token name_of_2:sym<General> {'2'}

    proto token name_of_3 {*}
    token name_of_3:sym<General> {'3'}

    proto token name_of_4 {*}
    token name_of_4:sym<General> {'4'}

    proto token name_of_5 {*}
    token name_of_5:sym<General> {'5'}

    proto token name_of_6 {*}
    token name_of_6:sym<General> {'6'}

    proto token name_of_7 {*}
    token name_of_7:sym<General> {'7'}

    proto token name_of_8 {*}
    token name_of_8:sym<General> {'8'}

    proto token name_of_9 {*}
    token name_of_9:sym<General> {'9'}

    proto token name_of_10 {*}
    token name_of_10:sym<General> {'10'}

    proto token name_of_11 {*}
    token name_of_11:sym<General> {'11'}

    proto token name_of_12 {*}
    token name_of_12:sym<General> {'12'}

    proto token name_of_13 {*}
    token name_of_13:sym<General> {'13'}

    proto token name_of_14 {*}
    token name_of_14:sym<General> {'14'}

    proto token name_of_15 {*}
    token name_of_15:sym<General> {'15'}

    proto token name_of_16 {*}
    token name_of_16:sym<General> {'16'}

    proto token name_of_17 {*}
    token name_of_17:sym<General> {'17'}

    proto token name_of_18 {*}
    token name_of_18:sym<General> {'18'}

    proto token name_of_19 {*}
    token name_of_19:sym<General> {'19'}

    proto token name_of_20 {*}
    token name_of_20:sym<General> {'20'}

    proto token name_of_21 {*}
    token name_of_21:sym<General> {'21'}

    proto token name_of_22 {*}
    token name_of_22:sym<General> {'22'}

    proto token name_of_23 {*}
    token name_of_23:sym<General> {'23'}

    proto token name_of_24 {*}
    token name_of_24:sym<General> {'24'}

    proto token name_of_25 {*}
    token name_of_25:sym<General> {'25'}

    proto token name_of_26 {*}
    token name_of_26:sym<General> {'26'}

    proto token name_of_27 {*}
    token name_of_27:sym<General> {'27'}

    proto token name_of_28 {*}
    token name_of_28:sym<General> {'28'}

    proto token name_of_29 {*}
    token name_of_29:sym<General> {'29'}
    
    proto token name_of_30 {*}
    token name_of_30:sym<General> {'30'}

    proto token name_of_40 {*}
    token name_of_40:sym<General> {'40'}

    proto token name_of_50 {*}
    token name_of_50:sym<General> {'50'}

    proto token name_of_60 {*}
    token name_of_60:sym<General> {'60'}

    proto token name_of_70 {*}
    token name_of_70:sym<General> {'70'}

    proto token name_of_80 {*}
    token name_of_80:sym<General> {'80'}

    proto token name_of_90 {*}
    token name_of_90:sym<General> {'90'}

    proto token name_of_100 {*}
    token name_of_100:sym<General> {'hundred'}

    proto token suffix_for_100 {*}
    token suffix_for_100:sym<General> {'-hundred'}

    proto token name_of_1000 {*}
    token name_of_1000:sym<General> {'thousand'}

    proto token name_of_1000000 {*}
    token name_of_1000000:sym<General> {'million'}

    proto token name_of_bil {*}
    token name_of_bil:sym<General> {'billion'}

    proto token name_of_tril {*}
    token name_of_tril:sym<General> {'trillion'}

    proto token worded-number-and-conjunction {*}
    token worded-number-and-conjunction:sym<General> {'and'}

    token hyphen-symbol { '-' | '‐' }
}