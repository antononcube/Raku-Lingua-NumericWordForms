use v6;

use Lingua::NumericWordForms::Actions::WordedNumberSpec;

class Lingua::NumericWordForms::Actions::Persian::WordedNumberSpec
        is Lingua::NumericWordForms::Actions::WordedNumberSpec {

    method worded_number_100s:sym<Persian>($/)  { make $<name_of_100> ?? 100 !! $<name_2_to_9>.made * 100 }

    method worded_number_up_to_100:sym<Persian>($/) {
      if $<name_of_10s> and $<name_1_to_10> {
          make ( $<name_of_10s>.made + $<name_1_to_10>.made )
      } elsif $<name_of_10s> {
          make $<name_of_10s>.made
      } else {
          make $<name_up_to_19>.made
      }
    }

    method name_of_0:sym<Persian>($/) {make 0}
    method name_of_1:sym<Persian>($/) {make 1}
    method name_of_2:sym<Persian>($/) {make 2}
    method name_of_3:sym<Persian>($/) {make 3}
    method name_of_4:sym<Persian>($/) {make 4}
    method name_of_5:sym<Persian>($/) {make 5}
    method name_of_6:sym<Persian>($/) {make 6}
    method name_of_7:sym<Persian>($/) {make 7}
    method name_of_8:sym<Persian>($/) {make 8}
    method name_of_9:sym<Persian>($/) {make 9}
    method name_of_10:sym<Persian>($/) {make 10}
    method name_of_11:sym<Persian>($/) {make 11}
    method name_of_12:sym<Persian>($/) {make 12}
    method name_of_13:sym<Persian>($/) {make 13}
    method name_of_14:sym<Persian>($/) {make 14}
    method name_of_15:sym<Persian>($/) {make 15}
    method name_of_16:sym<Persian>($/) {make 16}
    method name_of_17:sym<Persian>($/) {make 17}
    method name_of_18:sym<Persian>($/) {make 18}
    method name_of_19:sym<Persian>($/) {make 19}
    method name_of_20:sym<Persian>($/) {make 20}
    method name_of_30:sym<Persian>($/) {make 30}
    method name_of_40:sym<Persian>($/) {make 40}
    method name_of_50:sym<Persian>($/) {make 50}
    method name_of_60:sym<Persian>($/) {make 60}
    method name_of_70:sym<Persian>($/) {make 70}
    method name_of_80:sym<Persian>($/) {make 80}
    method name_of_90:sym<Persian>($/) {make 90}
    method name_of_100:sym<Persian>($/) {make 100}
    method name_of_1000:sym<Persian>($/) {make 1_000}
    method name_of_1000000:sym<Persian>($/) {make 1_000_000}
    method name_of_bil:sym<Persian>($/) {make 1_000_000_000}
    method name_of_tril:sym<Persian>($/) {make 1_000_000_000_000}
}
