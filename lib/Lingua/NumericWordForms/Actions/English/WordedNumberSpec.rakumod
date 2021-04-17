use v6;

use Lingua::NumericWordForms::Actions::WordedNumberSpec;

class Lingua::NumericWordForms::Actions::English::WordedNumberSpec
        is Lingua::NumericWordForms::Actions::WordedNumberSpec {

    method worded_number_100s:sym<English>($/) { make $<name_1_to_19>.made * 100 }

    method worded_number_up_to_100:sym<English>($/) {
        if $<name_of_10s> and $<name_1_to_10> {
            make $<name_of_10s>.made + $<name_1_to_10>.made
        } elsif $<name_of_10s> {
            make $<name_of_10s>.made
        } else {
            make $<name_up_to_19>.made
        }
    }

    method name_of_0:sym<English>($/) {make 0}
    method name_of_1:sym<English>($/) {make 1}
    method name_of_2:sym<English>($/) {make 2}
    method name_of_3:sym<English>($/) {make 3}
    method name_of_4:sym<English>($/) {make 4}
    method name_of_5:sym<English>($/) {make 5}
    method name_of_6:sym<English>($/) {make 6}
    method name_of_7:sym<English>($/) {make 7}
    method name_of_8:sym<English>($/) {make 8}
    method name_of_9:sym<English>($/) {make 9}
    method name_of_10:sym<English>($/) {make 10}
    method name_of_11:sym<English>($/) {make 11}
    method name_of_12:sym<English>($/) {make 12}
    method name_of_13:sym<English>($/) {make 13}
    method name_of_14:sym<English>($/) {make 14}
    method name_of_15:sym<English>($/) {make 15}
    method name_of_16:sym<English>($/) {make 16}
    method name_of_17:sym<English>($/) {make 17}
    method name_of_18:sym<English>($/) {make 18}
    method name_of_19:sym<English>($/) {make 19}
    method name_of_20:sym<English>($/) {make 20}
    method name_of_30:sym<English>($/) {make 30}
    method name_of_40:sym<English>($/) {make 40}
    method name_of_50:sym<English>($/) {make 50}
    method name_of_60:sym<English>($/) {make 60}
    method name_of_70:sym<English>($/) {make 70}
    method name_of_80:sym<English>($/) {make 80}
    method name_of_90:sym<English>($/) {make 90}
    method name_of_100:sym<English>($/) {make 100}
    method suffix_for_100:sym<English>($/) {make 100}
    method name_of_1000:sym<English>($/) {make 1_000}
    method name_of_1000000:sym<English>($/) {make 1_000_000}
    method name_of_bil:sym<English>($/) {make 1_000_000_000}
    method name_of_tril:sym<English>($/) {make 1_000_000_000_000}
}
