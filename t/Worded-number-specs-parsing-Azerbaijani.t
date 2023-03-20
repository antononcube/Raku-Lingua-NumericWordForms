use Test;

use lib './lib';
use lib '.';

use Lingua::NumericWordForms::Roles::Azerbaijani::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Azerbaijani::WordedNumberSpec;

grammar ParseObj
        does Lingua::NumericWordForms::Roles::Azerbaijani::WordedNumberSpec {
    rule TOP { <numeric-word-form>  }
};

sub parse-func(Str:D $spec) {
    ParseObj.parse(
            $spec.lc,
            rule => 'numeric-word-form',
            actions => Lingua::NumericWordForms::Actions::Azerbaijani::WordedNumberSpec.new).made,
}

plan 42;

## 1
is parse-func('sıfır'), 0,
        'sıfır';

## 2
is parse-func('üç'), 3,
        'üç';

## 3
is parse-func('dörd'), 4,
        'dörd';

## 4
is parse-func('doqquz'), 9,
        'doqquz';

## 5
is parse-func('on səkkiz'), 18,
        'on səkkiz';

## 6
is parse-func('on doqquz'), 19,
        'on doqquz';

## 7
is parse-func('iyirmi bir'), 21,
        'iyirmi bir';

## 8
is parse-func('iyirmi doqquz'), 29,
        'iyirmi doqquz';

## 9
is parse-func('əlli altı'), 56,
        'əlli altı';

## 10
is parse-func('yetmiş altı'), 76,
        'yetmiş altı';

## 11
is parse-func('səqsən beş'), 85,
        'səqsən beş';

## 12
is parse-func('doxsan yeddi'), 97,
        'doxsan yeddi';

## 13
is parse-func('bir yüz altmış üç'), 163,
        'bir yüz altmış üç';

## 14
is parse-func('bir yüz altmış səkkiz'), 168,
        'bir yüz altmış səkkiz';

## 15
is parse-func('iki yüz dörd'), 204,
        'iki yüz dörd';

## 16
is parse-func('iki yüz altmış'), 260,
        'iki yüz altmış';

## 17
is parse-func('dörd yüz iyirmi yeddi'), 427,
        'dörd yüz iyirmi yeddi';

## 18
is parse-func('səkkiz yüz dörd'), 804,
        'səkkiz yüz dörd';

## 19
is parse-func('iki min yetmiş iki'), 2072,
        'iki min yetmiş iki';

## 20
is parse-func('iki min iki yüz iyirmi səkkiz'), 2228,
        'iki min iki yüz iyirmi səkkiz';

## 21
is parse-func('beş min beş yüz iyirmi səkkiz'), 5528,
        'beş min beş yüz iyirmi səkkiz';

## 22
is parse-func('beş min səkkiz yüz əlli'), 5850,
        'beş min səkkiz yüz əlli';

## 23
is parse-func('altı min beş yüz səkkiz'), 6508,
        'altı min beş yüz səkkiz';

## 24
is parse-func('yeddi min dörd yüz on iki'), 7412,
        'yeddi min dörd yüz on iki';

## 25
is parse-func('iki yüz qırx beş min üç yüz iyirmi dörd'), 245324,
        'iki yüz qırx beş min üç yüz iyirmi dörd';

## 26
is parse-func('altı yüz on beş min iki yüz doxsan səkkiz'), 615298,
        'altı yüz on beş min iki yüz doxsan səkkiz';

## 27
is parse-func('yeddi yüz otuz bir min bir yüz altı'), 731106,
        'yeddi yüz otuz bir min bir yüz altı';

## 28
is parse-func('səkkiz yüz iyirmi üç min səkkiz yüz iyirmi dörd'), 823824,
        'səkkiz yüz iyirmi üç min səkkiz yüz iyirmi dörd';

## 29
is parse-func('səkkiz yüz doxsan bir min səkkiz yüz yetmiş bir'), 891871,
        'səkkiz yüz doxsan bir min səkkiz yüz yetmiş bir';

## 30
is parse-func('doqquz yüz qırx bir min beş yüz altı'), 941506,
        'doqquz yüz qırx bir min beş yüz altı';

## 31
is parse-func('əlli beş milyon üç yüz doxsan min beş yüz iyirmi yeddi'), 55390527,
        'əlli beş milyon üç yüz doxsan min beş yüz iyirmi yeddi';

## 32
is parse-func('yetmiş altı milyon yeddi yüz iyirmi dörd min dörd yüz otuz altı'), 76724436,
        'yetmiş altı milyon yeddi yüz iyirmi dörd min dörd yüz otuz altı';

## 33
is parse-func('iki yüz qırx yeddi milyon beş yüz yeddi min on səkkiz'), 247507018,
        'iki yüz qırx yeddi milyon beş yüz yeddi min on səkkiz';

## 34
is parse-func('beş yüz on altı milyon yeddi yüz əlli üç min üç yüz yetmiş səkkiz'), 516753378,
        'beş yüz on altı milyon yeddi yüz əlli üç min üç yüz yetmiş səkkiz';

## 35
is parse-func('səkkiz yüz qırx iki milyon yeddi yüz dörd min yeddi yüz səqsən üç'), 842704783,
        'səkkiz yüz qırx iki milyon yeddi yüz dörd min yeddi yüz səqsən üç';

## 36
is parse-func('doqquz yüz səqsən səkkiz milyon doqquz yüz altmış bir min üç yüz iyirmi dörd'), 988961324,
        'doqquz yüz səqsən səkkiz milyon doqquz yüz altmış bir min üç yüz iyirmi dörd';

## 37
is parse-func('beş yüz səqsən yeddi milyard yeddi yüz iyirmi yeddi milyon iki yüz otuz min bir yüz doxsan doqquz'),
        587727230199,
        'beş yüz səqsən yeddi milyard yeddi yüz iyirmi yeddi milyon iki yüz otuz min bir yüz doxsan doqquz';

## 38
is parse-func('altı yüz iyirmi yeddi milyard beş yüz səqsən milyon doqquz yüz otuz beş min yetmiş iki'), 627580935072,
        'altı yüz iyirmi yeddi milyard beş yüz səqsən milyon doqquz yüz otuz beş min yetmiş iki';

## 39
is parse-func('yeddi yüz səqsən dörd milyard altı yüz otuz milyon yeddi yüz otuz səkkiz min bir yüz iyirmi'),
        784630738120,
        'yeddi yüz səqsən dörd milyard altı yüz otuz milyon yeddi yüz otuz səkkiz min bir yüz iyirmi';

## 40
is parse-func('səkkiz yüz dörd milyard üç yüz doxsan yeddi milyon dörd yüz on altı min yeddi yüz otuz altı'),
        804397416736,
        'səkkiz yüz dörd milyard üç yüz doxsan yeddi milyon dörd yüz on altı min yeddi yüz otuz altı';

## 41
is parse-func('səkkiz yüz altmış yeddi milyard beş yüz altmış bir milyon üç yüz səqsən min dörd yüz on dörd'),
        867561380414,
        'səkkiz yüz altmış yeddi milyard beş yüz altmış bir milyon üç yüz səqsən min dörd yüz on dörd';

## 42
is parse-func('doqquz yüz səqsən milyard yeddi yüz otuz altı milyon bir yüz otuz səkkiz min səkkiz yüz otuz doqquz'),
        980736138839,
        'doqquz yüz səqsən milyard yeddi yüz otuz altı milyon bir yüz otuz səkkiz min səkkiz yüz otuz doqquz';

done-testing;