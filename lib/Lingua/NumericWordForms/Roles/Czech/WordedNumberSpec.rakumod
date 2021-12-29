use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::Czech::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {
    
    regex worded_number_100s:sym<Czech> { <name_2_to_9> <suffix_for_100> | <name_of_100> }
    
    regex worded_number_up_to_100:sym<Czech> { <name_of_10s> [ [ \h* <.worded-number-and-conjunction> \h* | \h+ ]? <name_1_to_10> ]? || <name_up_to_19> }

    token name_of_0:sym<Czech> {'nula' | 'nula'}
    token name_of_1:sym<Czech> {'jeden' | 'jeden'}
    token name_of_2:sym<Czech> {'dva' | 'dva'}
    token name_of_3:sym<Czech> {'tři' | 'tři'}
    token name_of_4:sym<Czech> {'čtyři' | 'čtyři'}
    token name_of_5:sym<Czech> {'pět' | 'pět'}
    token name_of_6:sym<Czech> {'šest' | 'šest'}
    token name_of_7:sym<Czech> {'sedm' | 'sedm'}
    token name_of_8:sym<Czech> {'osm' | 'osm'}
    token name_of_9:sym<Czech> {'devět' | 'devět'}
    token name_of_10:sym<Czech> {'deset' | 'deset'}
    token name_of_11:sym<Czech> {'jedenáct' | 'jedenáct'}
    token name_of_12:sym<Czech> {'dvanáct' | 'dvanáct'}
    token name_of_13:sym<Czech> {'třináct' | 'třináct'}
    token name_of_14:sym<Czech> {'čtrnáct' | 'čtrnáct'}
    token name_of_15:sym<Czech> {'patnáct' | 'patnáct'}
    token name_of_16:sym<Czech> {'šestnáct' | 'šestnáct'}
    token name_of_17:sym<Czech> {'sedmnáct' | 'sedmnáct'}
    token name_of_18:sym<Czech> {'osmnáct' | 'osmnáct'}
    token name_of_19:sym<Czech> {'devatenáct' | 'devatenáct'}
    token name_of_20:sym<Czech> {'dvacet' | 'dvacet'}
    token name_of_30:sym<Czech> {'třicet' | 'třicet'}
    token name_of_40:sym<Czech> {'čtyřicet' | 'čtyřicet'}
    token name_of_50:sym<Czech> {'padesát' | 'padesát'}
    token name_of_60:sym<Czech> {'šedesát' | 'šedesát'}
    token name_of_70:sym<Czech> {'sedmdesát' | 'sedmdesát'}
    token name_of_80:sym<Czech> {'osmdesát' | 'osmdesát'}
    token name_of_90:sym<Czech> {'devadesát' | 'devadesát'}
    token name_of_100:sym<Czech> {'sto' | 'sto'}
    token name_of_1000:sym<Czech> {'jedna tisíc' | 'jedna tisíc'}
    token name_of_10000:sym<Czech> {'deset tisíc' | 'deset tisíc'}
    token name_of_1000000:sym<Czech> {'jeden milión' | 'jeden milión'}
    token name_of_bil:sym<Czech> {'jeden miliarda' | 'jeden miliarda'}
    token name_of_tril:sym<Czech> {'jeden bilión' | 'jeden bilión'}

    token worded-number-and-conjunction:sym<Czech> {'a'}
}