use Test;

use lib './lib';
use lib '.';

use Lingua::NumericWordForms::Roles::Koremutake::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Koremutake::WordedNumberSpec;

grammar ParseObj
        does Lingua::NumericWordForms::Roles::Koremutake::WordedNumberSpec {
    rule TOP { <numeric-word-form>  }
};

sub parse-func(Str:D $spec) {
    ParseObj.parse(
            $spec.lc,
            rule => 'numeric-word-form',
            actions => Lingua::NumericWordForms::Actions::Koremutake::WordedNumberSpec.new).made,
}

plan 42;

#-----------------------------------------------------------
# Worded number specifications parsing
#-----------------------------------------------------------
# The tests below are generated with the following Mathematica code:
#SeedRandom[39902];
#testLanguage = "Koremutake";
#k = 6;
#lsTestNumbers =
#   Union[Join @@
#    Map[RandomInteger[#, k] &, {{0, 19}, {20, 100}, {101,
#       1000}, {1001, 10000}, {10001, 10^6}, {10^6, 10^9}, {10^9,
#       10^12}}]];
#Length[lsTestNumbers]
#
#lsSentences = Map[ResourceFunction["KoremutakeConvert"], lsTestNumbers];
#Shallow[lsSentences]
#
#txtTests =
# StringRiffle[
#  MapThread[
#   "## " <> #3 <> "\n" <> "is parse-func('" <> #1 <> "'), " <> #2 <>
#     ",\n'" <> #1 <> "';" &, {lsSentences, ToString /@ lsTestNumbers,
#    ToString /@ Range[Length[lsTestNumbers]]}], "\n\n"]
## 1
is parse-func('ba'), 0,
        'ba';

## 2
is parse-func('bo'), 3,
        'bo';

## 3
is parse-func('bu'), 4,
        'bu';

## 4
is parse-func('do'), 9,
        'do';

## 5
is parse-func('ga'), 18,
        'ga';

## 6
is parse-func('ge'), 19,
        'ge';

## 7
is parse-func('go'), 21,
        'go';

## 8
is parse-func('hy'), 29,
        'hy';

## 9
is parse-func('ni'), 56,
        'ni';

## 10
is parse-func('su'), 76,
        'su';

## 11
is parse-func('ve'), 85,
        've';

## 12
is parse-func('dre'), 97,
        'dre';

## 13
is parse-func('bejy'), 163,
        'bejy';

## 14
is parse-func('beku'), 168,
        'beku';

## 15
is parse-func('besu'), 204,
        'besu';

## 16
is parse-func('bibu'), 260,
        'bibu';

## 17
is parse-func('bole'), 427,
        'bole';

## 18
is parse-func('daka'), 804,
        'daka';

## 19
is parse-func('fuha'), 2072,
        'fuha';

## 20
is parse-func('fymu'), 2228,
        'fymu';

## 21
is parse-func('leha'), 5528,
        'leha';

## 22
is parse-func('lobra'), 5850,
        'lobra';

## 23
is parse-func('migra'), 6508,
        'migra';

## 24
is parse-func('nopri'), 7412,
        'nopri';

## 25
is parse-func('fistusu'), 245324,
        'fistusu';

## 26
is parse-func('kerybi'), 615298,
        'kerybi';

## 27
is parse-func('litedri'), 731106,
        'litedri';

## 28
is parse-func('mikafu'), 823824,
        'mikafu';

## 29
is parse-func('nanebry'), 891871,
        'nanebry';

## 30
is parse-func('nonyra'), 941506,
        'nonyra';

## 31
is parse-func('himudripo'), 55390527,
        'himudripo';

## 32
is parse-func('kasigryva'), 76724436,
        'kasigryva';

## 33
is parse-func('prubitisi'), 247507018,
        'prubitisi';

## 34
is parse-func('beprumufodri'), 516753378,
        'beprumufodri';

## 35
is parse-func('bofyfrutefo'), 842704783,
        'bofyfrutefo';

## 36
is parse-func('bovosemuli'), 988961324,
        'bovosemuli';

## 37
is parse-func('fyfenugykypry'), 587727230199,
        'fyfenugykypry';

## 38
is parse-func('gajoproprineji'), 627580935072,
        'gajoproprineji';

## 39
is parse-func('gufrustydyvysa'), 784630738120,
        'gufrustydyvysa';

## 40
is parse-func('gymutasibiji'), 804397416736,
        'gymutasibiji';

## 41
is parse-func('hejepropumupi'), 867561380414,
        'hejepropumupi';

## 42
is parse-func('hurorenepavo'), 980736138839,
        'hurorenepavo';

done-testing;