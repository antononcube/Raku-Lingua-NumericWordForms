use v6;

use Lingua::NumericWordForms::Actions::WordedNumberSpec;

class Lingua::NumericWordForms::Actions::Russian::WordedNumberSpec
        is Lingua::NumericWordForms::Actions::WordedNumberSpec {

    method worded_number_100s:sym<Russian>($/)  { make $<name_of_100> ?? 100 !! $<name_2_to_9>.made * 100 }

    method worded_number_up_to_100:sym<Russian>($/) {
      if $<name_of_10s> and $<name_1_to_10> {
          make $<name_of_10s>.made + $<name_1_to_10>.made
      } elsif $<name_of_10s> {
          make $<name_of_10s>.made
      } else {
          make $<name_up_to_19>.made
      }
    }
      
    method name_of_0:sym<Russian>($/) {make 0}
    method name_of_1:sym<Russian>($/) {make 1}
    method name_of_2:sym<Russian>($/) {make 2}
    method name_of_3:sym<Russian>($/) {make 3}
    method name_of_4:sym<Russian>($/) {make 4}
    method name_of_5:sym<Russian>($/) {make 5}
    method name_of_6:sym<Russian>($/) {make 6}
    method name_of_7:sym<Russian>($/) {make 7}
    method name_of_8:sym<Russian>($/) {make 8}
    method name_of_9:sym<Russian>($/) {make 9}
    method name_of_10:sym<Russian>($/) {make 10}
    method name_of_11:sym<Russian>($/) {make 11}
    method name_of_12:sym<Russian>($/) {make 12}
    method name_of_13:sym<Russian>($/) {make 13}
    method name_of_14:sym<Russian>($/) {make 14}
    method name_of_15:sym<Russian>($/) {make 15}
    method name_of_16:sym<Russian>($/) {make 16}
    method name_of_17:sym<Russian>($/) {make 17}
    method name_of_18:sym<Russian>($/) {make 18}
    method name_of_19:sym<Russian>($/) {make 19}
    method name_of_20:sym<Russian>($/) {make 20}
    method name_of_30:sym<Russian>($/) {make 30}
    method name_of_40:sym<Russian>($/) {make 40}
    method name_of_50:sym<Russian>($/) {make 50}
    method name_of_60:sym<Russian>($/) {make 60}
    method name_of_70:sym<Russian>($/) {make 70}
    method name_of_80:sym<Russian>($/) {make 80}
    method name_of_90:sym<Russian>($/) {make 90}
    method name_of_100:sym<Russian>($/) {make 100}
    method suffix_for_100:sym<Russian>($/) {make 100}
    method name_of_1000:sym<Russian>($/) {make 1_000}
    method name_of_1000000:sym<Russian>($/) {make 1_000_000}
    method name_of_bil:sym<Russian>($/) {make 1_000_000_000}
    method name_of_tril:sym<Russian>($/) {make 1_000_000_000_000}
}
