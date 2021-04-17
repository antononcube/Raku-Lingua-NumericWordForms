use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

role Lingua::NumericWordForms::Roles::Persian::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {

    regex worded_number_100s:sym<Persian> { <name_1_to_19> \h+ <name_of_100> | <name_of_100> }

    regex worded_number_up_to_100:sym<Persian> {
        <name_of_10s> [ [ \h* <.worded-number-and-conjunction> \h* | \h+ ]? <name_1_to_10> ]? ||
        [ <name_1_to_10> [ \h* <.worded-number-and-conjunction> \h* | \h+ ]? ]? <name_of_10s> ||
        <name_up_to_19> }

    token name_of_0:sym<Persian> {'صفر'}
    token name_of_1:sym<Persian> {'یک'}
    token name_of_2:sym<Persian> {'دو'}
    token name_of_3:sym<Persian> {'سه'}
    token name_of_4:sym<Persian> {'چهار'}
    token name_of_5:sym<Persian> {'پنج'}
    token name_of_6:sym<Persian> {'شش'}
    token name_of_7:sym<Persian> {'هفت'}
    token name_of_8:sym<Persian> {'هشت'}
    token name_of_9:sym<Persian> {'نه'}
    token name_of_10:sym<Persian> {'ده'}
    token name_of_11:sym<Persian> {'یازده'}
    token name_of_12:sym<Persian> {'دوازده'}
    token name_of_13:sym<Persian> {'سیزده'}
    token name_of_14:sym<Persian> {'چهارده'}
    token name_of_15:sym<Persian> {'پانزده'}
    token name_of_16:sym<Persian> {'شانزده'}
    token name_of_17:sym<Persian> {'هفده'}
    token name_of_18:sym<Persian> {'هجده'}
    token name_of_19:sym<Persian> {'نوزده'}
    token name_of_20:sym<Persian> {'بیست'}
    token name_of_30:sym<Persian> {'سی'}
    token name_of_40:sym<Persian> {'چهل'}
    token name_of_50:sym<Persian> {'پنجاه'}
    token name_of_60:sym<Persian> {'شصت'}
    token name_of_70:sym<Persian> {'هفتاد'}
    token name_of_80:sym<Persian> {'هشتاد'}
    token name_of_90:sym<Persian> {'نود'}
    token name_of_100:sym<Persian> {'صد'}
    token suffix_for_100:sym<Persian> {'صد'}
    token name_of_1000:sym<Persian> {'یک هزار'}
    token name_of_1000000:sym<Persian> {'یک میلیون'}
    token name_of_bil:sym<Persian> {'یک میلیارد'}
    token name_of_tril:sym<Persian> {'یک هزار میلیارد'}

    token worded-number-and-conjunction:sym<Persian> {'و'}
}