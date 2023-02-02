use Test;

use lib './lib';
use lib '.';

use Lingua::NumericWordForms::Roles::Portuguese::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Portuguese::WordedNumberSpec;

grammar ParseObj
        does Lingua::NumericWordForms::Roles::Portuguese::WordedNumberSpec {
    rule TOP { <numeric-word-form>  }
};

sub parse-func(Str:D $spec) {
    ParseObj.parse(
            $spec.lc,
            rule => 'numeric-word-form',
            actions => Lingua::NumericWordForms::Actions::Portuguese::WordedNumberSpec.new).made,
}

plan 42;

#-----------------------------------------------------------
# Worded number specifications parsing
#-----------------------------------------------------------
# The tests below are generated with the following Mathematica code:
#SeedRandom[39902];
#testLanguage = "Portuguese";
#k = 6;
#lsTestNumbers =
#  Union[Join @@
#    Map[RandomInteger[#, k] &, {{0, 19}, {20, 100}, {101,
#       1000}, {1001, 10000}, {10001, 10^6}, {10^6, 10^9}, {10^9,
#       10^12}}]];
#Length[lsTestNumbers]
#
#lsSentences =
#  Map[IntegerName[#, {"Portuguese", "Words"}] &, lsTestNumbers];
#Shallow[lsSentences]
#
#StringRiffle[
# MapThread[
#  "## " <> #3 <> "\n" <> "is parse-func('" <> #1 <> "'), " <> #2 <>
#    ",\n'" <> #1 <> "';" &, {lsSentences, ToString /@ lsTestNumbers,
#   ToString /@ Range[Length[lsTestNumbers]]}], "\n\n"]

## 1
is parse-func('zero'), 0,
        'zero';

## 2
is parse-func('três'), 3,
        'três';

## 3
is parse-func('quatro'), 4,
        'quatro';

## 4
is parse-func('nove'), 9,
        'nove';

## 5
is parse-func('dezoito'), 18,
        'dezoito';

## 6
is parse-func('dezenove'), 19,
        'dezenove';

## 7
is parse-func('vinte e um'), 21,
        'vinte e um';

## 8
is parse-func('vinte e nove'), 29,
        'vinte e nove';

## 9
is parse-func('cinquenta e seis'), 56,
        'cinquenta e seis';

## 10
is parse-func('setenta e seis'), 76,
        'setenta e seis';

## 11
is parse-func('oitenta e cinco'), 85,
        'oitenta e cinco';

## 12
is parse-func('noventa e sete'), 97,
        'noventa e sete';

## 13
is parse-func('cento e sessenta e três'), 163,
        'cento e sessenta e três';

## 14
is parse-func('cento e sessenta e oito'), 168,
        'cento e sessenta e oito';

## 15
is parse-func('duzentos e quatro'), 204,
        'duzentos e quatro';

## 16
is parse-func('duzentos e sessenta'), 260,
        'duzentos e sessenta';

## 17
is parse-func('quatrocentos e vinte e sete'), 427,
        'quatrocentos e vinte e sete';

## 18
is parse-func('oitocentos e quatro'), 804,
        'oitocentos e quatro';

## 19
is parse-func('dois mil e setenta e dois'), 2072,
        'dois mil e setenta e dois';

## 20
is parse-func('dois mil e duzentos e vinte e oito'), 2228,
        'dois mil e duzentos e vinte e oito';

## 21
is parse-func('cinco mil e quinhentos e vinte e oito'), 5528,
        'cinco mil e quinhentos e vinte e oito';

## 22
is parse-func('cinco mil e oitocentos e cinquenta'), 5850,
        'cinco mil e oitocentos e cinquenta';

## 23
is parse-func('seis mil e quinhentos e oito'), 6508,
        'seis mil e quinhentos e oito';

## 24
is parse-func('sete mil e quatrocentos e doze'), 7412,
        'sete mil e quatrocentos e doze';

## 25
is parse-func('duzentos e quarenta e cinco mil e trezentos e vinte e quatro'), 245324,
        'duzentos e quarenta e cinco mil e trezentos e vinte e quatro';

## 26
is parse-func('seiscentos e quinze mil e duzentos e noventa e oito'), 615298,
        'seiscentos e quinze mil e duzentos e noventa e oito';

## 27
is parse-func('setecentos e trinta e um mil e cento e seis'), 731106,
        'setecentos e trinta e um mil e cento e seis';

## 28
is parse-func('oitocentos e vinte e três mil e oitocentos e vinte e quatro'), 823824,
        'oitocentos e vinte e três mil e oitocentos e vinte e quatro';

## 29
is parse-func('oitocentos e noventa e um mil e oitocentos e setenta e um'), 891871,
        'oitocentos e noventa e um mil e oitocentos e setenta e um';

## 30
is parse-func('novecentos e quarenta e um mil e quinhentos e seis'), 941506,
        'novecentos e quarenta e um mil e quinhentos e seis';

## 31
is parse-func('cinquenta e cinco milhões e trezentos e noventa mil e quinhentos e vinte e sete'), 55390527,
        'cinquenta e cinco milhões e trezentos e noventa mil e quinhentos e vinte e sete';

## 32
is parse-func('setenta e seis milhões e setecentos e vinte e quatro mil e quatrocentos e trinta e seis'), 76724436,
        'setenta e seis milhões e setecentos e vinte e quatro mil e quatrocentos e trinta e seis';

## 33
is parse-func('duzentos e quarenta e sete milhões e quinhentos e sete mil e dezoito'), 247507018,
        'duzentos e quarenta e sete milhões e quinhentos e sete mil e dezoito';

## 34
is parse-func('quinhentos e dezesseis milhões e setecentos e cinquenta e três mil e trezentos e setenta e oito'),
        516753378,
        'quinhentos e dezesseis milhões e setecentos e cinquenta e três mil e trezentos e setenta e oito';

## 35
is parse-func('oitocentos e quarenta e dois milhões e setecentos e quatro mil e setecentos e oitenta e três'),
        842704783,
        'oitocentos e quarenta e dois milhões e setecentos e quatro mil e setecentos e oitenta e três';

## 36
is parse-func('novecentos e oitenta e oito milhões e novecentos e sessenta e um mil e trezentos e vinte e quatro'),
        988961324,
        'novecentos e oitenta e oito milhões e novecentos e sessenta e um mil e trezentos e vinte e quatro';

## 37
is
        parse-func('quinhentos e oitenta e sete bilhões e setecentos e vinte e sete milhões e duzentos e trinta mil e cento e noventa e nove'),
        587727230199,
        'quinhentos e oitenta e sete bilhões e setecentos e vinte e sete milhões e duzentos e trinta mil e cento e noventa e nove';

## 38
is
        parse-func('seiscentos e vinte e sete bilhões e quinhentos e oitenta milhões e novecentos e trinta e cinco mil e setenta e dois'),
        627580935072,
        'seiscentos e vinte e sete bilhões e quinhentos e oitenta milhões e novecentos e trinta e cinco mil e setenta e dois';

## 39
is
        parse-func('setecentos e oitenta e quatro bilhões e seiscentos e trinta milhões e setecentos e trinta e oito mil e cento e vinte'),
        784630738120,
        'setecentos e oitenta e quatro bilhões e seiscentos e trinta milhões e setecentos e trinta e oito mil e cento e vinte';

## 40
is
        parse-func('oitocentos e quatro bilhões e trezentos e noventa e sete milhões e quatrocentos e dezesseis mil e setecentos e trinta e seis'),
        804397416736,
        'oitocentos e quatro bilhões e trezentos e noventa e sete milhões e quatrocentos e dezesseis mil e setecentos e trinta e seis';

## 41
is
        parse-func('oitocentos e sessenta e sete bilhões e quinhentos e sessenta e um milhões e trezentos e oitenta mil e quatrocentos e catorze'),
        867561380414,
        'oitocentos e sessenta e sete bilhões e quinhentos e sessenta e um milhões e trezentos e oitenta mil e quatrocentos e catorze';

## 42
is
        parse-func('novecentos e oitenta bilhões e setecentos e trinta e seis milhões e cento e trinta e oito mil e oitocentos e trinta e nove'),
        980736138839,
        'novecentos e oitenta bilhões e setecentos e trinta e seis milhões e cento e trinta e oito mil e oitocentos e trinta e nove';