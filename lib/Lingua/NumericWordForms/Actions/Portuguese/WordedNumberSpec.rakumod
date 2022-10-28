use v6;

use Lingua::NumericWordForms::Actions::WordedNumberSpec;

class Lingua::NumericWordForms::Actions::Portuguese::WordedNumberSpec
        is Lingua::NumericWordForms::Actions::WordedNumberSpec {

    method worded_number_100s:sym<Portuguese>($/)  { make $<name_of_100> ?? 100 !! $<name_2_to_9>.made * 100 }

    method worded_number_up_to_100:sym<Portuguese>($/) {
      if $<name_of_10s> and $<name_1_to_10> {
          make $<name_of_10s>.made + $<name_1_to_10>.made
      } elsif $<name_of_10s> {
          make $<name_of_10s>.made
      } else {
          make $<name_up_to_29>.made
      }
    }
      
    method name_of_0:sym<Portuguese>($/) {make 0}
    method name_of_1:sym<Portuguese>($/) {make 1}
    method name_of_2:sym<Portuguese>($/) {make 2}
    method name_of_3:sym<Portuguese>($/) {make 3}
    method name_of_4:sym<Portuguese>($/) {make 4}
    method name_of_5:sym<Portuguese>($/) {make 5}
    method name_of_6:sym<Portuguese>($/) {make 6}
    method name_of_7:sym<Portuguese>($/) {make 7}
    method name_of_8:sym<Portuguese>($/) {make 8}
    method name_of_9:sym<Portuguese>($/) {make 9}
    method name_of_10:sym<Portuguese>($/) {make 10}
    method name_of_11:sym<Portuguese>($/) {make 11}
    method name_of_12:sym<Portuguese>($/) {make 12}
    method name_of_13:sym<Portuguese>($/) {make 13}
    method name_of_14:sym<Portuguese>($/) {make 14}
    method name_of_15:sym<Portuguese>($/) {make 15}
    method name_of_16:sym<Portuguese>($/) {make 16}
    method name_of_17:sym<Portuguese>($/) {make 17}
    method name_of_18:sym<Portuguese>($/) {make 18}
    method name_of_19:sym<Portuguese>($/) {make 19}
    method name_of_20:sym<Portuguese>($/) {make 20}
    method name_of_30:sym<Portuguese>($/) {make 30}
    method name_of_40:sym<Portuguese>($/) {make 40}
    method name_of_50:sym<Portuguese>($/) {make 50}
    method name_of_60:sym<Portuguese>($/) {make 60}
    method name_of_70:sym<Portuguese>($/) {make 70}
    method name_of_80:sym<Portuguese>($/) {make 80}
    method name_of_90:sym<Portuguese>($/) {make 90}
    method name_of_100:sym<Portuguese>($/) {make 100}
    method suffix_for_100:sym<Portuguese>($/) {make 100}
    method name_of_1000:sym<Portuguese>($/) {make 1_000}
    method name_of_10000:sym<Portuguese>($/) {make 10_000}
    method name_of_1000000:sym<Portuguese>($/) {make 1_000_000}
    method name_of_bil:sym<Portuguese>($/) {make 1_000_000_000}
    method name_of_tril:sym<Portuguese>($/) {make 1_000_000_000_000}
}
