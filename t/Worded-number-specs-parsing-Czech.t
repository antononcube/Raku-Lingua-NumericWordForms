use Test;

use lib './lib';
use lib '.';

use Lingua::NumericWordForms::Roles::Czech::WordedNumberSpec;
use Lingua::NumericWordForms::Actions::Czech::WordedNumberSpec;

grammar ParseObj
        does Lingua::NumericWordForms::Roles::Czech::WordedNumberSpec {
    rule TOP { <numeric-word-form>  }
};

sub parse-func(Str:D $spec) {
    ParseObj.parse(
            $spec.lc,
            rule => 'numeric-word-form',
            actions => Lingua::NumericWordForms::Actions::Czech::WordedNumberSpec.new).made,
}

plan 42;

#-----------------------------------------------------------
# Worded number specifications parsing
#-----------------------------------------------------------
# The tests below are generated with the following Mathematica code:
#SeedRandom[39902];
#testLanguage = "Czech";
#k = 6;
#lsTestNumbers =
#  Union[Join @@
#    Map[RandomInteger[#, k] &, {{0, 19}, {20, 100}, {101,
#       1000}, {1001, 10000}, {10001, 10^6}, {10^6, 10^9}, {10^9,
#       10^12}}]];
#Length[lsTestNumbers]
#
#lsSentences =
#  Map[IntegerName[#, {testLanguage, "Words"}] &, lsTestNumbers];
#Shallow[lsSentences]
#
#StringRiffle[
# MapThread[
#  "## " <> #3 <> "\n" <> "is parse-func('" <> #1 <> "'), " <> #2 <>
#    ",\n'" <> #1 <> "';" &, {lsSentences, ToString /@ lsTestNumbers,
#   ToString /@ Range[Length[lsTestNumbers]]}], "\n\n"]

## 1
is parse-func('nula'), 0,
        'nula';

## 2
is parse-func('tři'), 3,
        'tři';

## 3
is parse-func('čtyři'), 4,
        'čtyři';

## 4
is parse-func('devět'), 9,
        'devět';

## 5
is parse-func('osmnáct'), 18,
        'osmnáct';

## 6
is parse-func('devatenáct'), 19,
        'devatenáct';

## 7
is parse-func('dvacet jeden'), 21,
        'dvacet jeden';

## 8
is parse-func('dvacet devět'), 29,
        'dvacet devět';

## 9
is parse-func('padesát šest'), 56,
        'padesát šest';

## 10
is parse-func('sedmdesát šest'), 76,
        'sedmdesát šest';

## 11
is parse-func('osmdesát pět'), 85,
        'osmdesát pět';

## 12
is parse-func('devadesát sedm'), 97,
        'devadesát sedm';

## 13
is parse-func('sto šedesát tři'), 163,
        'sto šedesát tři';

## 14
is parse-func('sto šedesát osm'), 168,
        'sto šedesát osm';

## 15
is parse-func('dvě stě čtyři'), 204,
        'dvě stě čtyři';

## 16
is parse-func('dvě stě šedesát'), 260,
        'dvě stě šedesát';

## 17
is parse-func('čtyři sta dvacet sedm'), 427,
        'čtyři sta dvacet sedm';

## 18
is parse-func('osm set čtyři'), 804,
        'osm set čtyři';

## 19
is parse-func('dvě tisíce sedmdesát dva'), 2072,
        'dvě tisíce sedmdesát dva';

## 20
is parse-func('dvě tisíce dvě stě dvacet osm'), 2228,
        'dvě tisíce dvě stě dvacet osm';

## 21
is parse-func('pět tisíc pět set dvacet osm'), 5528,
        'pět tisíc pět set dvacet osm';

## 22
is parse-func('pět tisíc osm set padesát'), 5850,
        'pět tisíc osm set padesát';

## 23
is parse-func('šest tisíc pět set osm'), 6508,
        'šest tisíc pět set osm';

## 24
is parse-func('sedm tisíc čtyři sta dvanáct'), 7412,
        'sedm tisíc čtyři sta dvanáct';

## 25
is parse-func('dvě stě čtyřicet pět tisíc tři sta dvacet čtyři'),
        245324,
        'dvě stě čtyřicet pět tisíc tři sta dvacet čtyři';

## 26
is parse-func('šest set patnáct tisíc dvě stě devadesát osm'),
        615298,
        'šest set patnáct tisíc dvě stě devadesát osm';

## 27
is parse-func('sedm set třicet jedna tisíc sto šest'),
        731106,
        'sedm set třicet jedna tisíc sto šest';

## 28
is parse-func('osm set dvacet tři tisíc osm set dvacet čtyři'),
        823824,
        'osm set dvacet tři tisíc osm set dvacet čtyři';

## 29
is parse-func('osm set devadesát jedna tisíc osm set sedmdesát jeden'),
        891871,
        'osm set devadesát jedna tisíc osm set sedmdesát jeden';

## 30
is parse-func('devět set čtyřicet jedna tisíc pět set šest'),
        941506,
        'devět set čtyřicet jedna tisíc pět set šest';

## 31
is parse-func('padesát pět miliónů tři sta devadesát tisíc pět set dvacet sedm'),
        55390527,
        'padesát pět miliónů tři sta devadesát tisíc pět set dvacet sedm';

## 32
is parse-func('sedmdesát šest miliónů sedm set dvacet čtyři tisíc čtyři sta třicet šest'),
        76724436,
        'sedmdesát šest miliónů sedm set dvacet čtyři tisíc čtyři sta třicet šest';

## 33
is parse-func('dvě stě čtyřicet sedm miliónů pět set sedm tisíc osmnáct'),
        247507018,
        'dvě stě čtyřicet sedm miliónů pět set sedm tisíc osmnáct';

## 34
is parse-func('pět set šestnáct miliónů sedm set padesát tři tisíc tři sta sedmdesát osm'),
        516753378,
        'pět set šestnáct miliónů sedm set padesát tři tisíc tři sta sedmdesát osm';

## 35
is parse-func('osm set čtyřicet dva miliónů sedm set čtyři tisíc sedm set osmdesát tři'),
        842704783,
        'osm set čtyřicet dva miliónů sedm set čtyři tisíc sedm set osmdesát tři';

## 36
is parse-func('devět set osmdesát osm miliónů devět set šedesát jedna tisíc tři sta dvacet čtyři'),
        988961324,
        'devět set osmdesát osm miliónů devět set šedesát jedna tisíc tři sta dvacet čtyři';

## 37
is parse-func('pět set osmdesát sedm miliardů sedm set dvacet sedm miliónů dvě stě třicet tisíc sto devadesát devět'),
        587727230199,
        'pět set osmdesát sedm miliardů sedm set dvacet sedm miliónů dvě stě třicet tisíc sto devadesát devět';

## 38
is parse-func('šest set dvacet sedm miliardů pět set osmdesát miliónů devět set třicet pět tisíc sedmdesát dva'),
        627580935072,
        'šest set dvacet sedm miliardů pět set osmdesát miliónů devět set třicet pět tisíc sedmdesát dva';

## 39
is parse-func('sedm set osmdesát čtyři miliardů šest set třicet miliónů sedm set třicet osm tisíc sto dvacet'),
        784630738120,
        'sedm set osmdesát čtyři miliardů šest set třicet miliónů sedm set třicet osm tisíc sto dvacet';

## 40
is parse-func('osm set čtyři miliardů tři sta devadesát sedm miliónů čtyři sta šestnáct tisíc sedm set třicet šest'),
        804397416736,
        'osm set čtyři miliardů tři sta devadesát sedm miliónů čtyři sta šestnáct tisíc sedm set třicet šest';

## 41
is parse-func('osm set šedesát sedm miliardů pět set šedesát jeden miliónů tři sta osmdesát tisíc čtyři sta čtrnáct'),
        867561380414,
        'osm set šedesát sedm miliardů pět set šedesát jeden miliónů tři sta osmdesát tisíc čtyři sta čtrnáct';

## 42
is parse-func('devět set osmdesát miliardů sedm set třicet šest miliónů sto třicet osm tisíc osm set třicet devět'),
        980736138839,
        'devět set osmdesát miliardů sedm set třicet šest miliónů sto třicet osm tisíc osm set třicet devět';

done-testing;