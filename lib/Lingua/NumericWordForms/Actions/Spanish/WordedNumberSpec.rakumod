use v6;

use Lingua::NumericWordForms::Actions::WordedNumberSpec;

class Lingua::NumericWordForms::Actions::Spanish::WordedNumberSpec
        is Lingua::NumericWordForms::Actions::WordedNumberSpec {

    method worded_number_100s:sym<Spanish>($/)  { make $<name_of_100> ?? 100 !! $<name_2_to_9>.made * 100 }

    method worded_number_up_to_100:sym<Spanish>($/) {
      if $<name_of_10s> and $<name_1_to_10> {
          make $<name_of_10s>.made + $<name_1_to_10>.made
      } elsif $<name_of_10s> {
          make $<name_of_10s>.made
      } else {
          make $<name_up_to_29>.made
      }
    }
      
    method name_of_0:sym<Spanish>($/) {make 0}
    method name_of_1:sym<Spanish>($/) {make 1}
    method name_of_2:sym<Spanish>($/) {make 2}
    method name_of_3:sym<Spanish>($/) {make 3}
    method name_of_4:sym<Spanish>($/) {make 4}
    method name_of_5:sym<Spanish>($/) {make 5}
    method name_of_6:sym<Spanish>($/) {make 6}
    method name_of_7:sym<Spanish>($/) {make 7}
    method name_of_8:sym<Spanish>($/) {make 8}
    method name_of_9:sym<Spanish>($/) {make 9}
    method name_of_10:sym<Spanish>($/) {make 10}
    method name_of_11:sym<Spanish>($/) {make 11}
    method name_of_12:sym<Spanish>($/) {make 12}
    method name_of_13:sym<Spanish>($/) {make 13}
    method name_of_14:sym<Spanish>($/) {make 14}
    method name_of_15:sym<Spanish>($/) {make 15}
    method name_of_16:sym<Spanish>($/) {make 16}
    method name_of_17:sym<Spanish>($/) {make 17}
    method name_of_18:sym<Spanish>($/) {make 18}
    method name_of_19:sym<Spanish>($/) {make 19}
    method name_of_20:sym<Spanish>($/) {make 20}
    method name_of_21:sym<Spanish>($/) {make 21}
    method name_of_22:sym<Spanish>($/) {make 22}
    method name_of_23:sym<Spanish>($/) {make 23}
    method name_of_24:sym<Spanish>($/) {make 24}
    method name_of_25:sym<Spanish>($/) {make 25}
    method name_of_26:sym<Spanish>($/) {make 26}
    method name_of_27:sym<Spanish>($/) {make 27}
    method name_of_28:sym<Spanish>($/) {make 28}
    method name_of_29:sym<Spanish>($/) {make 29}
    method name_of_30:sym<Spanish>($/) {make 30}
    method name_of_40:sym<Spanish>($/) {make 40}
    method name_of_50:sym<Spanish>($/) {make 50}
    method name_of_60:sym<Spanish>($/) {make 60}
    method name_of_70:sym<Spanish>($/) {make 70}
    method name_of_80:sym<Spanish>($/) {make 80}
    method name_of_90:sym<Spanish>($/) {make 90}
    method name_of_100:sym<Spanish>($/) {make 100}
    method suffix_for_100:sym<Spanish>($/) {make 100}
    method name_of_1000:sym<Spanish>($/) {make 1_000}
    method name_of_1000000:sym<Spanish>($/) {make 1_000_000}
    method name_of_bil:sym<Spanish>($/) {make 1_000_000_000}
    method name_of_tril:sym<Spanish>($/) {make 1_000_000_000_000}
}
