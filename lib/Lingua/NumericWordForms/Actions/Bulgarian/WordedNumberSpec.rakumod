use v6;

use Lingua::NumericWordForms::Actions::WordedNumberSpec;

class Lingua::NumericWordForms::Actions::Bulgarian::WordedNumberSpec
        is Lingua::NumericWordForms::Actions::WordedNumberSpec {

    method worded_number_100s:sym<Bulgarian>($/)  { make $<name_of_100> ?? 100 !! $<name_2_to_9>.made * 100 }

    method worded_number_up_to_100:sym<Bulgarian>($/) {
      if $<name_of_10s> and $<name_1_to_10> {
          make ( $<name_of_10s>.made + $<name_1_to_10>.made )
      } elsif $<name_of_10s> {
          make $<name_of_10s>.made
      } else {
          make $<name_up_to_19>.made
      }
    }
      
    method name_of_0:sym<Bulgarian>($/) {make 0}
    method name_of_1:sym<Bulgarian>($/) {make 1}
    method name_of_2:sym<Bulgarian>($/) {make 2}
    method name_of_3:sym<Bulgarian>($/) {make 3}
    method name_of_4:sym<Bulgarian>($/) {make 4}
    method name_of_5:sym<Bulgarian>($/) {make 5}
    method name_of_6:sym<Bulgarian>($/) {make 6}
    method name_of_7:sym<Bulgarian>($/) {make 7}
    method name_of_8:sym<Bulgarian>($/) {make 8}
    method name_of_9:sym<Bulgarian>($/) {make 9}
    method name_of_10:sym<Bulgarian>($/) {make 10}
    method name_of_11:sym<Bulgarian>($/) {make 11}
    method name_of_12:sym<Bulgarian>($/) {make 12}
    method name_of_13:sym<Bulgarian>($/) {make 13}
    method name_of_14:sym<Bulgarian>($/) {make 14}
    method name_of_15:sym<Bulgarian>($/) {make 15}
    method name_of_16:sym<Bulgarian>($/) {make 16}
    method name_of_17:sym<Bulgarian>($/) {make 17}
    method name_of_18:sym<Bulgarian>($/) {make 18}
    method name_of_19:sym<Bulgarian>($/) {make 19}
    method name_of_20:sym<Bulgarian>($/) {make 20}
    method name_of_30:sym<Bulgarian>($/) {make 30}
    method name_of_40:sym<Bulgarian>($/) {make 40}
    method name_of_50:sym<Bulgarian>($/) {make 50}
    method name_of_60:sym<Bulgarian>($/) {make 60}
    method name_of_70:sym<Bulgarian>($/) {make 70}
    method name_of_80:sym<Bulgarian>($/) {make 80}
    method name_of_90:sym<Bulgarian>($/) {make 90}
    method name_of_100:sym<Bulgarian>($/) {make 100}
    method suffix_for_100:sym<Bulgarian>($/) {make 100}
    method name_of_1000:sym<Bulgarian>($/) {make 1000}
    method name_of_1000000:sym<Bulgarian>($/) {make 1000000}
    method name_of_bil:sym<Bulgarian>($/) {make 1000000000}
}
