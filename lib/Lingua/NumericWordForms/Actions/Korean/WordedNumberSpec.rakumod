use v6;

use Lingua::NumericWordForms::Actions::WordedNumberSpec;

class Lingua::NumericWordForms::Actions::Korean::WordedNumberSpec
        is Lingua::NumericWordForms::Actions::WordedNumberSpec {

    method numeric-word-form:sym<Korean>($/) { make $/.values[0].made }

    method worded_number_100s:sym<Korean>($/)  { make $<name_of_100> ?? 100 !! $<name_2_to_9>.made * 100 }

    method worded_number_up_to_100:sym<Korean>($/) {
      if $<name_of_10s> and $<name_1_to_10> {
          make ( $<name_of_10s>.made + $<name_1_to_10>.made )
      } elsif $<name_of_10s> {
          make $<name_of_10s>.made
      } else {
          make $<name_up_to_19>.made
      }
    }

    method name_of_0:sym<Korean>($/) {make 0}
    method name_of_1:sym<Korean>($/) {make 1}
    method name_of_2:sym<Korean>($/) {make 2}
    method name_of_3:sym<Korean>($/) {make 3}
    method name_of_4:sym<Korean>($/) {make 4}
    method name_of_5:sym<Korean>($/) {make 5}
    method name_of_6:sym<Korean>($/) {make 6}
    method name_of_7:sym<Korean>($/) {make 7}
    method name_of_8:sym<Korean>($/) {make 8}
    method name_of_9:sym<Korean>($/) {make 9}
    method name_of_10:sym<Korean>($/) {make 10}
    method name_of_11:sym<Korean>($/) {make 11}
    method name_of_12:sym<Korean>($/) {make 12}
    method name_of_13:sym<Korean>($/) {make 13}
    method name_of_14:sym<Korean>($/) {make 14}
    method name_of_15:sym<Korean>($/) {make 15}
    method name_of_16:sym<Korean>($/) {make 16}
    method name_of_17:sym<Korean>($/) {make 17}
    method name_of_18:sym<Korean>($/) {make 18}
    method name_of_19:sym<Korean>($/) {make 19}
    method name_of_20:sym<Korean>($/) {make 20}
    method name_of_30:sym<Korean>($/) {make 30}
    method name_of_40:sym<Korean>($/) {make 40}
    method name_of_50:sym<Korean>($/) {make 50}
    method name_of_60:sym<Korean>($/) {make 60}
    method name_of_70:sym<Korean>($/) {make 70}
    method name_of_80:sym<Korean>($/) {make 80}
    method name_of_90:sym<Korean>($/) {make 90}
    method name_of_100:sym<Korean>($/) {make 100}
    method name_of_1000:sym<Korean>($/) {make 1000}
    method name_of_10000:sym<Korean>($/) {make 10_000}
    method name_of_1000000:sym<Korean>($/) {make 1_000_000}
    method name_of_bil:sym<Korean>($/) {make 1_000_000_000}
    method name_of_tril:sym<Korean>($/) {make 1_000_000_000_000}
    method name_of_oku:sym<Korean>($/) {make 100_000_000}
    method name_of_cho:sym<Korean>($/) {make 1_000_000_000_000}
}
