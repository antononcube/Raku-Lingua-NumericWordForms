use v6;

use Lingua::NumericWordForms::Actions::WordedNumberSpec;

class Lingua::NumericWordForms::Actions::Polish::WordedNumberSpec
        is Lingua::NumericWordForms::Actions::WordedNumberSpec {

    method worded_number_100s:sym<Polish>($/)  { make $<name_of_100> ?? 100 !! $<name_2_to_9>.made * 100 }

    method worded_number_up_to_100:sym<Polish>($/) {
      if $<name_of_10s> and $<name_1_to_10> {
          make $<name_of_10s>.made + $<name_1_to_10>.made
      } elsif $<name_of_10s> {
          make $<name_of_10s>.made
      } else {
          make $<name_up_to_19>.made
      }
    }
      
    method name_of_0:sym<Polish>($/) {make 0}
    method name_of_1:sym<Polish>($/) {make 1}
    method name_of_2:sym<Polish>($/) {make 2}
    method name_of_3:sym<Polish>($/) {make 3}
    method name_of_4:sym<Polish>($/) {make 4}
    method name_of_5:sym<Polish>($/) {make 5}
    method name_of_6:sym<Polish>($/) {make 6}
    method name_of_7:sym<Polish>($/) {make 7}
    method name_of_8:sym<Polish>($/) {make 8}
    method name_of_9:sym<Polish>($/) {make 9}
    method name_of_10:sym<Polish>($/) {make 10}
    method name_of_11:sym<Polish>($/) {make 11}
    method name_of_12:sym<Polish>($/) {make 12}
    method name_of_13:sym<Polish>($/) {make 13}
    method name_of_14:sym<Polish>($/) {make 14}
    method name_of_15:sym<Polish>($/) {make 15}
    method name_of_16:sym<Polish>($/) {make 16}
    method name_of_17:sym<Polish>($/) {make 17}
    method name_of_18:sym<Polish>($/) {make 18}
    method name_of_19:sym<Polish>($/) {make 19}
    method name_of_20:sym<Polish>($/) {make 20}
    method name_of_30:sym<Polish>($/) {make 30}
    method name_of_40:sym<Polish>($/) {make 40}
    method name_of_50:sym<Polish>($/) {make 50}
    method name_of_60:sym<Polish>($/) {make 60}
    method name_of_70:sym<Polish>($/) {make 70}
    method name_of_80:sym<Polish>($/) {make 80}
    method name_of_90:sym<Polish>($/) {make 90}
    method name_of_100:sym<Polish>($/) {make 100}
    method suffix_for_100:sym<Polish>($/) {make 100}
    method name_of_1000:sym<Polish>($/) {make 1_000}
    method name_of_1000000:sym<Polish>($/) {make 1_000_000}
    method name_of_bil:sym<Polish>($/) {make 1_000_000_000}
    method name_of_tril:sym<Polish>($/) {make 1_000_000_000_000}
}
