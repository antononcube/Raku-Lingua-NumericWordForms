use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::Greek::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {
    
    regex worded_number_100s:sym<Greek> { <name_2_to_9> <suffix_for_100> | <name_of_100> }

    token worded-number-and-conjunction:sym<Greek> {'και'}

    regex worded_number_up_to_100:sym<Greek> { <name_of_10s> [ [ \h* <.worded-number-and-conjunction> \h* | \h+ ]? <name_1_to_10> ]? || <name_up_to_19> }

    token name_of_0:sym<Greek> {'μηδέν'}
    token name_of_1:sym<Greek> {'ένα'     | 'μία'}
    token name_of_2:sym<Greek> {'δύο'     | 'δυο'   | 'δια'      | 'δισ'}
    token name_of_3:sym<Greek> {'τρία'    | 'τρια'  | 'τρι'      | 'τρισ'     | 'τρεις' }
    token name_of_4:sym<Greek> {'τέσσερα' | 'τετρα' | 'τετράκις' | 'τέσσερις' }
    token name_of_5:sym<Greek> {'πέντε'   | 'πεντα' | 'πεντάκις'}
    token name_of_6:sym<Greek> {'έξι'     | 'εξα'   | 'εξάκις'}
    token name_of_7:sym<Greek> {'επτά'    | 'επτα'  | 'εφτα'     | 'επτάκις'  | 'εφτάκις'}
    token name_of_8:sym<Greek> {'οκτώ'    | 'οχτώ'  | 'οκτα'     | 'οχτα'     | 'οκτάκις' | 'οχτάκις'}
    token name_of_9:sym<Greek> {'εννέα'   | 'εννιά' | 'εννια'    | 'εννιάκις'}
    token name_of_10:sym<Greek> {'δέκα'}
    token name_of_11:sym<Greek> {'έντεκα'}
    token name_of_12:sym<Greek> {'δώδεκα'}
    token name_of_13:sym<Greek> {'δεκατρία'}
    token name_of_14:sym<Greek> {'δεκατέσσερα'}
    token name_of_15:sym<Greek> {'δεκαπέντε'}
    token name_of_16:sym<Greek> {'δεκαέξι'}
    token name_of_17:sym<Greek> {'δεκαεπτά'  | 'δεκαεφτά'}
    token name_of_18:sym<Greek> {'δεκαοκτώ'  | 'δεκαοχτώ'}
    token name_of_19:sym<Greek> {'δεκαεννέα' | 'δεκαεννιά'}
    token name_of_20:sym<Greek> {'είκοσι'}
    token name_of_30:sym<Greek> {'τριάντα'}
    token name_of_40:sym<Greek> {'σαράντα'}
    token name_of_50:sym<Greek> {'πενήντα'}
    token name_of_60:sym<Greek> {'εξήντα'}
    token name_of_70:sym<Greek> {'εβδομήντα'}
    token name_of_80:sym<Greek> {'ογδόντα'}
    token name_of_90:sym<Greek> {'εννενήντα'}
    token name_of_100:sym<Greek>     {'εκατό'   | 'εκατόν'}
    token suffix_for_100:sym<Greek>  {'εκατό'   | 'εκατόν'  | 'εκατοντάδα' | 'εκατοντάδες' | 'κόσια' | 'κόσιες'}
    token name_of_1000:sym<Greek>    {'χίλια'   | 'χιλιάδα' | 'χιλιάδες'   | 'χίλιάδες'}
    token name_of_10000:sym<Greek>   {'μυριάδα' | 'μυριάδες'}
    token name_of_1000000:sym<Greek> { 'εκατομμύριο'    | 'εκατομμύρια'}
    token name_of_bil:sym<Greek>     {'δισεκατομμύριο'  | 'δισεκατομμύρια'}
    token name_of_tril:sym<Greek>    {'τρισεκατομμύριο' | 'τρισεκατομμύρια'}
}