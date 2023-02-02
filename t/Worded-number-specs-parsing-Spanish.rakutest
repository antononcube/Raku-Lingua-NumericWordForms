use Test;

use lib './lib';
use lib '.';

use Lingua::NumericWordForms::Roles::Spanish::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Spanish::WordedNumberSpec;

grammar ParseObj
        does Lingua::NumericWordForms::Roles::Spanish::WordedNumberSpec {
    rule TOP { <numeric-word-form>  }
};

sub parse-func(Str:D $spec) {
    ParseObj.parse(
            $spec.lc,
            rule => 'numeric-word-form',
            actions => Lingua::NumericWordForms::Actions::Spanish::WordedNumberSpec.new).made,
}

plan 42;

#-----------------------------------------------------------
# Worded number specifications parsing
#-----------------------------------------------------------
# The tests below are generated with the following Mathematica code:
#SeedRandom[39902];
#testLanguage = "Spanish";
#k = 6;
#lsTestNumbers =
#  Union[Join @@
#    Map[RandomInteger[#, k] &, {{0, 19}, {20, 100}, {101,
#       1000}, {1001, 10000}, {10001, 10^6}, {10^6, 10^9}, {10^9,
#       10^12}}]];
#Length[lsTestNumbers]
#
#lsSentences =
#  Map[IntegerName[#, {"Spanish", "Words"}] &, lsTestNumbers];
#Shallow[lsSentences]
#
#StringRiffle[
# MapThread[
#  "## " <> #3 <> "\n" <> "is parse-func('" <> #1 <> "'), " <> #2 <>
#    ",\n'" <> #1 <> "';" &, {lsSentences, ToString /@ lsTestNumbers,
#   ToString /@ Range[Length[lsTestNumbers]]}], "\n\n"]


## 1
is parse-func('cero'), 0,
        'cero';

## 2
is parse-func('tres'), 3,
        'tres';

## 3
is parse-func('cuatro'), 4,
        'cuatro';

## 4
is parse-func('nueve'), 9,
        'nueve';

## 5
is parse-func('dieciocho'), 18,
        'dieciocho';

## 6
is parse-func('diecinueve'), 19,
        'diecinueve';

## 7
is parse-func('veintiuno'), 21,
        'veintiuno';

## 8
is parse-func('veintinueve'), 29,
        'veintinueve';

## 9
is parse-func('cincuenta y seis'), 56,
        'cincuenta y seis';

## 10
is parse-func('setenta y seis'), 76,
        'setenta y seis';

## 11
is parse-func('ochenta y cinco'), 85,
        'ochenta y cinco';

## 12
is parse-func('noventa y siete'), 97,
        'noventa y siete';

## 13
is parse-func('ciento sesenta y tres'), 163,
        'ciento sesenta y tres';

## 14
is parse-func('ciento sesenta y ocho'), 168,
        'ciento sesenta y ocho';

## 15
is parse-func('doscientos cuatro'), 204,
        'doscientos cuatro';

## 16
is parse-func('doscientos sesenta'), 260,
        'doscientos sesenta';

## 17
is parse-func('cuatrocientos veintisiete'), 427,
        'cuatrocientos veintisiete';

## 18
is parse-func('ochocientos cuatro'), 804,
        'ochocientos cuatro';

## 19
is parse-func('dos mil setenta y dos'), 2072,
        'dos mil setenta y dos';

## 20
is parse-func('dos mil doscientos veintiocho'), 2228,
        'dos mil doscientos veintiocho';

## 21
is parse-func('cinco mil quinientos veintiocho'), 5528,
        'cinco mil quinientos veintiocho';

## 22
is parse-func('cinco mil ochocientos cincuenta'), 5850,
        'cinco mil ochocientos cincuenta';

## 23
is parse-func('seis mil quinientos ocho'), 6508,
        'seis mil quinientos ocho';

## 24
is parse-func('siete mil cuatrocientos doce'), 7412,
        'siete mil cuatrocientos doce';

## 25
is parse-func('doscientos cuarenta y cinco mil trescientos veinticuatro'), 245324,
        'doscientos cuarenta y cinco mil trescientos veinticuatro';

## 26
is parse-func('seiscientos quince mil doscientos noventa y ocho'), 615298,
        'seiscientos quince mil doscientos noventa y ocho';

## 27
is parse-func('setecientos treinta y un mil ciento seis'), 731106,
        'setecientos treinta y un mil ciento seis';

## 28
is parse-func('ochocientos veintitrés mil ochocientos veinticuatro'), 823824,
        'ochocientos veintitrés mil ochocientos veinticuatro';

## 29
is parse-func('ochocientos noventa y un mil ochocientos setenta y uno'), 891871,
        'ochocientos noventa y un mil ochocientos setenta y uno';

## 30
is parse-func('novecientos cuarenta y un mil quinientos seis'), 941506,
        'novecientos cuarenta y un mil quinientos seis';

## 31
is parse-func('cincuenta y cinco millones trescientos noventa mil quinientos veintisiete'), 55390527,
        'cincuenta y cinco millones trescientos noventa mil quinientos veintisiete';

## 32
is parse-func('setenta y seis millones setecientos veinticuatro mil cuatrocientos treinta y seis'), 76724436,
        'setenta y seis millones setecientos veinticuatro mil cuatrocientos treinta y seis';

## 33
is parse-func('doscientos cuarenta y siete millones quinientos siete mil dieciocho'), 247507018,
        'doscientos cuarenta y siete millones quinientos siete mil dieciocho';

## 34
is parse-func('quinientos dieciséis millones setecientos cincuenta y tres mil trescientos setenta y ocho'), 516753378,
        'quinientos dieciséis millones setecientos cincuenta y tres mil trescientos setenta y ocho';

## 35
is parse-func('ochocientos cuarenta y dos millones setecientos cuatro mil setecientos ochenta y tres'), 842704783,
        'ochocientos cuarenta y dos millones setecientos cuatro mil setecientos ochenta y tres';

## 36
is parse-func('novecientos ochenta y ocho millones novecientos sesenta y un mil trescientos veinticuatro'), 988961324,
        'novecientos ochenta y ocho millones novecientos sesenta y un mil trescientos veinticuatro';

## 37
is
        parse-func('quinientos ochenta y siete mil setecientos veintisiete millones doscientos treinta mil ciento noventa y nueve'),
        587727230199,
        'quinientos ochenta y siete mil setecientos veintisiete millones doscientos treinta mil ciento noventa y nueve';

## 38
is parse-func('seiscientos veintisiete mil quinientos ochenta millones novecientos treinta y cinco mil setenta y dos'),
        627580935072,
        'seiscientos veintisiete mil quinientos ochenta millones novecientos treinta y cinco mil setenta y dos';

## 39
is
        parse-func('setecientos ochenta y cuatro mil seiscientos treinta millones setecientos treinta y ocho mil ciento veinte'),
        784630738120,
        'setecientos ochenta y cuatro mil seiscientos treinta millones setecientos treinta y ocho mil ciento veinte';

## 40
is
        parse-func('ochocientos cuatro mil trescientos noventa y siete millones cuatrocientos dieciséis mil setecientos treinta y seis'),
        804397416736,
        'ochocientos cuatro mil trescientos noventa y siete millones cuatrocientos dieciséis mil setecientos treinta y seis';

## 41
is
        parse-func('ochocientos sesenta y siete mil quinientos sesenta y un millones trescientos ochenta mil cuatrocientos catorce'),
        867561380414,
        'ochocientos sesenta y siete mil quinientos sesenta y un millones trescientos ochenta mil cuatrocientos catorce';

## 42
is
        parse-func('novecientos ochenta mil setecientos treinta y seis millones ciento treinta y ocho mil ochocientos treinta y nueve'),
        980736138839,
        'novecientos ochenta mil setecientos treinta y seis millones ciento treinta y ocho mil ochocientos treinta y nueve';

done-testing;