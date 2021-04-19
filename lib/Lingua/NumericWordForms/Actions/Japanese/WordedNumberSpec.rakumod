use v6;

use Lingua::NumericWordForms::Actions::WordedNumberSpec;

class Lingua::NumericWordForms::Actions::Japanese::WordedNumberSpec
        is Lingua::NumericWordForms::Actions::WordedNumberSpec {

    method numeric-word-form:sym<Japanese>($/) { make $/.values[0].made }

    method worded_number_100s:sym<Japanese>($/)  { make $<name_of_100> ?? 100 !! $<name_2_to_9>.made * 100 }

    method worded_number_up_to_100:sym<Japanese>($/) {
      if $<name_of_10s> and $<name_1_to_10> {
          make ( $<name_of_10s>.made + $<name_1_to_10>.made )
      } elsif $<name_of_10s> {
          make $<name_of_10s>.made
      } else {
          make $<name_up_to_19>.made
      }
    }

    method name_of_0:sym<Japanese>($/) {make 0}
    method name_of_1:sym<Japanese>($/) {make 1}
    method name_of_2:sym<Japanese>($/) {make 2}
    method name_of_3:sym<Japanese>($/) {make 3}
    method name_of_4:sym<Japanese>($/) {make 4}
    method name_of_5:sym<Japanese>($/) {make 5}
    method name_of_6:sym<Japanese>($/) {make 6}
    method name_of_7:sym<Japanese>($/) {make 7}
    method name_of_8:sym<Japanese>($/) {make 8}
    method name_of_9:sym<Japanese>($/) {make 9}
    method name_of_10:sym<Japanese>($/) {make 10}
    method name_of_11:sym<Japanese>($/) {make 11}
    method name_of_12:sym<Japanese>($/) {make 12}
    method name_of_13:sym<Japanese>($/) {make 13}
    method name_of_14:sym<Japanese>($/) {make 14}
    method name_of_15:sym<Japanese>($/) {make 15}
    method name_of_16:sym<Japanese>($/) {make 16}
    method name_of_17:sym<Japanese>($/) {make 17}
    method name_of_18:sym<Japanese>($/) {make 18}
    method name_of_19:sym<Japanese>($/) {make 19}
    method name_of_20:sym<Japanese>($/) {make 20}
    method name_of_30:sym<Japanese>($/) {make 30}
    method name_of_40:sym<Japanese>($/) {make 40}
    method name_of_50:sym<Japanese>($/) {make 50}
    method name_of_60:sym<Japanese>($/) {make 60}
    method name_of_70:sym<Japanese>($/) {make 70}
    method name_of_80:sym<Japanese>($/) {make 80}
    method name_of_90:sym<Japanese>($/) {make 90}
    method name_of_100:sym<Japanese>($/) {make 100}
    method name_of_1000:sym<Japanese>($/) {make 1000}
    method name_of_10000:sym<Japanese>($/) {make 10_000}
    method name_of_1000000:sym<Japanese>($/) {make 1_000_000}
    method name_of_bil:sym<Japanese>($/) {make 1_000_000_000}
    method name_of_tril:sym<Japanese>($/) {make 1_000_000_000_000}
    method name_of_oku:sym<Japanese>($/) {make 100_000_000}
    method name_of_cho:sym<Japanese>($/) {make 1_000_000_000_000}
}
