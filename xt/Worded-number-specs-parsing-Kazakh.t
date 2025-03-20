use Test;

use lib './lib';
use lib '.';

use Lingua::NumericWordForms::Roles::Kazakh::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Kazakh::WordedNumberSpec;

grammar ParseObj
        does Lingua::NumericWordForms::Roles::Kazakh::WordedNumberSpec {
    rule TOP { <numeric-word-form>  }
};

sub parse-func(Str:D $spec) {
    ParseObj.parse(
            $spec.lc,
            rule => 'numeric-word-form',
            actions => Lingua::NumericWordForms::Actions::Kazakh::WordedNumberSpec.new).made,
}

plan 43;

## 1
is parse-func('nöl'), 0,
        'nöl';

## 2
is parse-func('üş'), 3,
        'üş';

## 3
is parse-func('tört'), 4,
        'tört';

## 4
is parse-func('toğız'), 9,
        'toğız';

## 5
is parse-func('on segiz'), 18,
        'on segiz';

## 6
is parse-func('on toğız'), 19,
        'on toğız';

## 7
is parse-func('jïırma bir'), 21,
        'jïırma bir';

## 8
is parse-func('jïırma toğız'), 29,
        'jïırma toğız';

## 9
is parse-func('елу алты'), 56,
        'елу алты';

## 10
is parse-func('jetpis altı'), 76,
        'jetpis altı';

## 11
is parse-func('seksen bes'), 85,
        'seksen bes';

## 12
is parse-func('toqsan jeti'), 97,
        'toqsan jeti';

## 13
is parse-func('jüz alpıs üş'), 163,
        'jüz alpıs üş';

## 14
is parse-func('жүз алпыс үш'), 163,
        'жүз алпыс үш';

## 15
is parse-func('jüz alpıs segiz'), 168,
        'jüz alpıs segiz';

## 16
is parse-func('eki jüz tört'), 204,
        'eki jüz tört';

## 17
is parse-func('eki jüz alpıs'), 260,
        'eki jüz alpıs';

## 18
is parse-func('tört jüz jïırma jeti'), 427,
        'tört jüz jïırma jeti';

## 19
is parse-func('segiz jüz tört'), 804,
        'segiz jüz tört';

## 20
is parse-func('eki mıñ jetpis eki'), 2072,
        'eki mıñ jetpis eki';

## 21
is parse-func('eki mıñ eki jüz jïırma segiz'), 2228,
        'eki mıñ eki jüz jïırma segiz';

## 22
is parse-func('bes mıñ bes jüz jïırma segiz'), 5528,
        'bes mıñ bes jüz jïırma segiz';

## 23
is parse-func('bes mıñ segiz jüz elw'), 5850,
        'bes mıñ segiz jüz elw';

## 24
is parse-func('altı mıñ bes jüz segiz'), 6508,
        'altı mıñ bes jüz segiz';

## 25
is parse-func('jeti mıñ tört jüz on eki'), 7412,
        'jeti mıñ tört jüz on eki';

## 26
is parse-func('eki jüz qırıq bes mıñ üş jüz jïırma tört'), 245324,
        'eki jüz qırıq bes mıñ üş jüz jïırma tört';

## 27
is parse-func('altı jüz on bes mıñ eki jüz toqsan segiz'), 615298,
        'altı jüz on bes mıñ eki jüz toqsan segiz';

## 28
is parse-func('jeti jüz otız bir mıñ jüz altı'), 731106,
        'jeti jüz otız bir mıñ jüz altı';

## 29
is parse-func('segiz jüz jïırma üş mıñ segiz jüz jïırma tört'), 823824,
        'segiz jüz jïırma üş mıñ segiz jüz jïırma tört';

## 30
is parse-func('segiz jüz toqsan bir mıñ segiz jüz jetpis bir'), 891871,
        'segiz jüz toqsan bir mıñ segiz jüz jetpis bir';

## 31
is parse-func('toğız jüz qırıq bir mıñ bes jüz altı'), 941506,
        'toğız jüz qırıq bir mıñ bes jüz altı';

## 32
is parse-func('elw bes million üş jüz toqsan mıñ bes jüz jïırma jeti'), 55390527,
        'elw bes million üş jüz toqsan mıñ bes jüz jïırma jeti';

## 33
is parse-func('jetpis altı million jeti jüz jïırma tört mıñ tört jüz otız altı'), 76724436,
        'jetpis altı million jeti jüz jïırma tört mıñ tört jüz otız altı';

## 34
is parse-func('eki jüz qırıq jeti million bes jüz jeti mıñ on segiz'), 247507018,
        'eki jüz qırıq jeti million bes jüz jeti mıñ on segiz';

## 35
is parse-func('bes jüz on altı million jeti jüz elw üş mıñ üş jüz jetpis segiz'), 516753378,
        'bes jüz on altı million jeti jüz elw üş mıñ üş jüz jetpis segiz';

## 36
is parse-func('segiz jüz qırıq eki million jeti jüz tört mıñ jeti jüz seksen üş'), 842704783,
        'segiz jüz qırıq eki million jeti jüz tört mıñ jeti jüz seksen üş';

## 37
is parse-func('toğız jüz seksen segiz million toğız jüz alpıs bir mıñ üş jüz jïırma tört'), 988961324,
        'toğız jüz seksen segiz million toğız jüz alpıs bir mıñ üş jüz jïırma tört';

## 38
is parse-func('bes jüz seksen jeti mïllïard jeti jüz jïırma jeti million eki jüz otız mıñ jüz toqsan toğız'),
        587727230199,
        'bes jüz seksen jeti mïllïard jeti jüz jïırma jeti million eki jüz otız mıñ jüz toqsan toğız';

## 39
is parse-func('altı jüz jïırma jeti mïllïard bes jüz seksen million toğız jüz otız bes mıñ jetpis eki'), 627580935072,
        'altı jüz jïırma jeti mïllïard bes jüz seksen million toğız jüz otız bes mıñ jetpis eki';

## 40
is parse-func('jeti jüz seksen tört mïllïard altı jüz otız million jeti jüz otız segiz mıñ jüz jïırma'),
        784630738120,
        'jeti jüz seksen tört mïllïard altı jüz otız million jeti jüz otız segiz mıñ jüz jïırma';

## 41
is parse-func('segiz jüz tört mïllïard üş jüz toqsan jeti million tört jüz on altı mıñ jeti jüz otız altı'),
        804397416736,
        'segiz jüz tört mïllïard üş jüz toqsan jeti million tört jüz on altı mıñ jeti jüz otız altı';

## 42
is parse-func('segiz jüz alpıs jeti mïllïard bes jüz alpıs bir million üş jüz seksen mıñ tört jüz on tört'),
        867561380414,
        'segiz jüz alpıs jeti mïllïard bes jüz alpıs bir million üş jüz seksen mıñ tört jüz on tört';

## 43
is parse-func('toğız jüz seksen mïllïard jeti jüz otız altı million jüz otız segiz mıñ segiz jüz otız toğız'),
        980736138839,
        'toğız jüz seksen mïllïard jeti jüz otız altı million jüz otız segiz mıñ segiz jüz otız toğız';

done-testing;