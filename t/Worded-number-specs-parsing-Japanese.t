use Test;

use lib './lib';
use lib '.';

use Lingua::NumericWordForms::Roles::Japanese::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Japanese::WordedNumberSpec;

grammar ParseObj
        does Lingua::NumericWordForms::Roles::Japanese::WordedNumberSpec {
    rule TOP { <numeric-word-form>  }
};

sub parse-func(Str:D $spec) {
    ParseObj.parse(
            $spec.lc,
            rule => 'numeric-word-form',
            actions => Lingua::NumericWordForms::Actions::Japanese::WordedNumberSpec.new).made,
}

plan 42;

#-----------------------------------------------------------
# Worded number specifications parsing
#-----------------------------------------------------------
# The tests below are generated with the following Mathematica code:
#SeedRandom[39902];
#testLanguage = "Japanese";
#k = 6;
#lsTestNumbers =
#  Union[Join @@
#    Map[RandomInteger[#, k] &, {{0, 19}, {20, 100}, {101,
#       1000}, {1001, 10000}, {10001, 10^6}, {10^6, 10^9}, {10^9,
#       10^12}}]];
#Length[lsTestNumbers]
#
#lsSentences =
#  Map[IntegerName[#, {"Japanese", "Words"}] &, lsTestNumbers];
#Shallow[lsSentences]
#
#StringRiffle[
# MapThread[
#  "## " <> #3 <> "\n" <> "is parse-func('" <> #1 <> "'), " <> #2 <>
#    ",\n'" <> #1 <> "';" &, {lsSentences, ToString /@ lsTestNumbers,
#   ToString /@ Range[Length[lsTestNumbers]]}], "\n\n"]

## 1
is parse-func('〇'), 0,
        '〇';

## 2
is parse-func('三'), 3,
        '三';

## 3
is parse-func('四'), 4,
        '四';

## 4
is parse-func('九'), 9,
        '九';

## 5
is parse-func('十八'), 18,
        '十八';

## 6
is parse-func('十九'), 19,
        '十九';

## 7
is parse-func('二十一'), 21,
        '二十一';

## 8
is parse-func('二十九'), 29,
        '二十九';

## 9
is parse-func('五十六'), 56,
        '五十六';

## 10
is parse-func('七十六'), 76,
        '七十六';

## 11
is parse-func('八十五'), 85,
        '八十五';

## 12
is parse-func('九十七'), 97,
        '九十七';

## 13
is parse-func('百六十三'), 163,
        '百六十三';

## 14
is parse-func('百六十八'), 168,
        '百六十八';

## 15
is parse-func('二百四'), 204,
        '二百四';

## 16
is parse-func('二百六十'), 260,
        '二百六十';

## 17
is parse-func('四百二十七'), 427,
        '四百二十七';

## 18
is parse-func('八百四'), 804,
        '八百四';

## 19
is parse-func('二千七十二'), 2072,
        '二千七十二';

## 20
is parse-func('二千二百二十八'), 2228,
        '二千二百二十八';

## 21
is parse-func('五千五百二十八'), 5528,
        '五千五百二十八';

## 22
is parse-func('五千八百五十'), 5850,
        '五千八百五十';

## 23
is parse-func('六千五百八'), 6508,
        '六千五百八';

## 24
is parse-func('七千四百十二'), 7412,
        '七千四百十二';

## 25
is parse-func('二十四万五千三百二十四'), 245324,
        '二十四万五千三百二十四';

## 26
is parse-func('六十一万五千二百九十八'), 615298,
        '六十一万五千二百九十八';

## 27
is parse-func('七十三万千百六'), 731106,
        '七十三万千百六';

## 28
is parse-func('八十二万三千八百二十四'), 823824,
        '八十二万三千八百二十四';

## 29
is parse-func('八十九万千八百七十一'), 891871,
        '八十九万千八百七十一';

## 30
is parse-func('九十四万千五百六'), 941506,
        '九十四万千五百六';

## 31
is parse-func('五千五百三十九万五百二十七'), 55390527,
        '五千五百三十九万五百二十七';

## 32
is parse-func('七千六百七十二万四千四百三十六'), 76724436,
        '七千六百七十二万四千四百三十六';

## 33
is parse-func('二億四千七百五十万七千十八'), 247507018,
        '二億四千七百五十万七千十八';

## 34
is parse-func('五億千六百七十五万三千三百七十八'), 516753378,
        '五億千六百七十五万三千三百七十八';

## 35
is parse-func('八億四千二百七十万四千七百八十三'), 842704783,
        '八億四千二百七十万四千七百八十三';

## 36
is parse-func('九億八千八百九十六万千三百二十四'), 988961324,
        '九億八千八百九十六万千三百二十四';

## 37
is parse-func('五千八百七十七億二千七百二十三万百九十九'), 587727230199,
        '五千八百七十七億二千七百二十三万百九十九';

## 38
is parse-func('六千二百七十五億八千九十三万五千七十二'), 627580935072,
        '六千二百七十五億八千九十三万五千七十二';

## 39
is parse-func('七千八百四十六億三千七十三万八千百二十'), 784630738120,
        '七千八百四十六億三千七十三万八千百二十';

## 40
is parse-func('八千四十三億九千七百四十一万六千七百三十六'), 804397416736,
        '八千四十三億九千七百四十一万六千七百三十六';

## 41
is parse-func('八千六百七十五億六千百三十八万四百十四'), 867561380414,
        '八千六百七十五億六千百三十八万四百十四';

## 42
is parse-func('九千八百七億三千六百十三万八千八百三十九'), 980736138839,
        '九千八百七億三千六百十三万八千八百三十九';

done-testing;