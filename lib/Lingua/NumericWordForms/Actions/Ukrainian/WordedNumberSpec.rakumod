use v6;

use Lingua::NumericWordForms::Actions::WordedNumberSpec;

class Lingua::NumericWordForms::Actions::Ukrainian::WordedNumberSpec
        is Lingua::NumericWordForms::Actions::WordedNumberSpec {

    method worded_number_100s:sym<Ukrainian>($/)  { make $<name_of_100> ?? 100 !! $<name_2_to_9>.made * 100 }

    method worded_number_up_to_100:sym<Ukrainian>($/) {
      if $<name_of_10s> and $<name_1_to_10> {
          make $<name_of_10s>.made + $<name_1_to_10>.made
      } elsif $<name_of_10s> {
          make $<name_of_10s>.made
      } else {
          make $<name_up_to_19>.made
      }
    }
      
    method name_of_0:sym<Ukrainian>($/) {make 0}
    method name_of_1:sym<Ukrainian>($/) {make 1}
    method name_of_2:sym<Ukrainian>($/) {make 2}
    method name_of_3:sym<Ukrainian>($/) {make 3}
    method name_of_4:sym<Ukrainian>($/) {make 4}
    method name_of_5:sym<Ukrainian>($/) {make 5}
    method name_of_6:sym<Ukrainian>($/) {make 6}
    method name_of_7:sym<Ukrainian>($/) {make 7}
    method name_of_8:sym<Ukrainian>($/) {make 8}
    method name_of_9:sym<Ukrainian>($/) {make 9}
    method name_of_10:sym<Ukrainian>($/) {make 10}
    method name_of_11:sym<Ukrainian>($/) {make 11}
    method name_of_12:sym<Ukrainian>($/) {make 12}
    method name_of_13:sym<Ukrainian>($/) {make 13}
    method name_of_14:sym<Ukrainian>($/) {make 14}
    method name_of_15:sym<Ukrainian>($/) {make 15}
    method name_of_16:sym<Ukrainian>($/) {make 16}
    method name_of_17:sym<Ukrainian>($/) {make 17}
    method name_of_18:sym<Ukrainian>($/) {make 18}
    method name_of_19:sym<Ukrainian>($/) {make 19}
    method name_of_20:sym<Ukrainian>($/) {make 20}
    method name_of_30:sym<Ukrainian>($/) {make 30}
    method name_of_40:sym<Ukrainian>($/) {make 40}
    method name_of_50:sym<Ukrainian>($/) {make 50}
    method name_of_60:sym<Ukrainian>($/) {make 60}
    method name_of_70:sym<Ukrainian>($/) {make 70}
    method name_of_80:sym<Ukrainian>($/) {make 80}
    method name_of_90:sym<Ukrainian>($/) {make 90}
    method name_of_100:sym<Ukrainian>($/) {make 100}
    method suffix_for_100:sym<Ukrainian>($/) {make 100}
    method name_of_1000:sym<Ukrainian>($/) {make 1_000}
    method name_of_1000000:sym<Ukrainian>($/) {make 1_000_000}
    method name_of_bil:sym<Ukrainian>($/) {make 1_000_000_000}
    method name_of_tril:sym<Ukrainian>($/) {make 1_000_000_000_000}
}
