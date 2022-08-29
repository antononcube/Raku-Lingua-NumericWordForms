use Test;

use lib './lib';
use lib '.';

use Lingua::NumericWordForms::Roles::Korean::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Korean::WordedNumberSpec;

grammar ParseObj
        does Lingua::NumericWordForms::Roles::Korean::WordedNumberSpec {
    rule TOP { <numeric-word-form>  }
};

sub parse-func(Str:D $spec) {
    ParseObj.parse(
            $spec.lc,
            rule => 'numeric-word-form',
            actions => Lingua::NumericWordForms::Actions::Korean::WordedNumberSpec.new).made,
}

plan 42;


## 1
is parse-func('공'), 0,
'공';

## 2
is parse-func('삼'), 3,
'삼';

## 3
is parse-func('사'), 4,
'사';

## 4
is parse-func('구'), 9,
'구';

## 5
is parse-func('십팔'), 18,
'십팔';

## 6
is parse-func('십구'), 19,
'십구';

## 7
is parse-func('이십일'), 21,
'이십일';

## 8
is parse-func('이십구'), 29,
'이십구';

## 9
is parse-func('오십육'), 56,
'오십육';

## 10
is parse-func('칠십육'), 76,
'칠십육';

## 11
is parse-func('팔십오'), 85,
'팔십오';

## 12
is parse-func('구십칠'), 97,
'구십칠';

## 13
is parse-func('백육십삼'), 163,
'백육십삼';

## 14
is parse-func('백육십팔'), 168,
'백육십팔';

## 15
is parse-func('이백사'), 204,
'이백사';

## 16
is parse-func('이백육십'), 260,
'이백육십';

## 17
is parse-func('사백이십칠'), 427,
'사백이십칠';

## 18
is parse-func('팔백사'), 804,
'팔백사';

## 19
is parse-func('이천칠십이'), 2072,
'이천칠십이';

## 20
is parse-func('이천이백이십팔'), 2228,
'이천이백이십팔';

## 21
is parse-func('오천오백이십팔'), 5528,
'오천오백이십팔';

## 22
is parse-func('오천팔백오십'), 5850,
'오천팔백오십';

## 23
is parse-func('육천오백팔'), 6508,
'육천오백팔';

## 24
is parse-func('칠천사백십이'), 7412,
'칠천사백십이';

## 25
is parse-func('이십사만 오천삼백이십사'), 245324,
'이십사만 오천삼백이십사';

## 26
is parse-func('육십일만 오천이백구십팔'), 615298,
'육십일만 오천이백구십팔';

## 27
is parse-func('칠십삼만 천백육'), 731106,
'칠십삼만 천백육';

## 28
is parse-func('팔십이만 삼천팔백이십사'), 823824,
'팔십이만 삼천팔백이십사';

## 29
is parse-func('팔십구만 천팔백칠십일'), 891871,
'팔십구만 천팔백칠십일';

## 30
is parse-func('구십사만 천오백육'), 941506,
'구십사만 천오백육';

## 31
is parse-func('오천오백삼십구만 오백이십칠'), 55390527,
'오천오백삼십구만 오백이십칠';

## 32
is parse-func('칠천육백칠십이만 사천사백삼십육'), 76724436,
'칠천육백칠십이만 사천사백삼십육';

## 33
is parse-func('이억 사천칠백오십만 칠천십팔'), 247507018,
'이억 사천칠백오십만 칠천십팔';

## 34
is parse-func('오억 천육백칠십오만 삼천삼백칠십팔'), 516753378,
'오억 천육백칠십오만 삼천삼백칠십팔';

## 35
is parse-func('팔억 사천이백칠십만 사천칠백팔십삼'), 842704783,
'팔억 사천이백칠십만 사천칠백팔십삼';

## 36
is parse-func('구억 팔천팔백구십육만 천삼백이십사'), 988961324,
'구억 팔천팔백구십육만 천삼백이십사';

## 37
is parse-func('오천팔백칠십칠억 이천칠백이십삼만 백구십구'), 587727230199,
'오천팔백칠십칠억 이천칠백이십삼만 백구십구';

## 38
is parse-func('육천이백칠십오억 팔천구십삼만 오천칠십이'), 627580935072,
'육천이백칠십오억 팔천구십삼만 오천칠십이';

## 39
is parse-func('칠천팔백사십육억 삼천칠십삼만 팔천백이십'), 784630738120,
'칠천팔백사십육억 삼천칠십삼만 팔천백이십';

## 40
is parse-func('팔천사십삼억 구천칠백사십일만 육천칠백삼십육'), 804397416736,
'팔천사십삼억 구천칠백사십일만 육천칠백삼십육';

## 41
is parse-func('팔천육백칠십오억 육천백삼십팔만 사백십사'), 867561380414,
'팔천육백칠십오억 육천백삼십팔만 사백십사';

## 42
is parse-func('구천팔백칠억 삼천육백십삼만 팔천팔백삼십구'), 980736138839,
'구천팔백칠억 삼천육백십삼만 팔천팔백삼십구';