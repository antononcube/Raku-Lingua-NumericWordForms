use v6;

use Lingua::NumericWordForms::Actions::WordedNumberSpec;

class Lingua::NumericWordForms::Actions::Kazakh::WordedNumberSpec
        is Lingua::NumericWordForms::Actions::WordedNumberSpec {

    method worded_number_100s:sym<Kazakh>($/)  { make $<name_of_100> ?? 100 !! $<name_2_to_9>.made * 100 }

    method worded_number_up_to_100:sym<Kazakh>($/) {
      if $<name_of_10s> and $<name_1_to_10> {
          make ( $<name_of_10s>.made + $<name_1_to_10>.made )
      } elsif $<name_of_10s> {
          make $<name_of_10s>.made
      } else {
          make $<name_up_to_19>.made
      }
    }
      
    method name_of_0:sym<Kazakh>($/) {make 0}
    method name_of_1:sym<Kazakh>($/) {make 1}
    method name_of_2:sym<Kazakh>($/) {make 2}
    method name_of_3:sym<Kazakh>($/) {make 3}
    method name_of_4:sym<Kazakh>($/) {make 4}
    method name_of_5:sym<Kazakh>($/) {make 5}
    method name_of_6:sym<Kazakh>($/) {make 6}
    method name_of_7:sym<Kazakh>($/) {make 7}
    method name_of_8:sym<Kazakh>($/) {make 8}
    method name_of_9:sym<Kazakh>($/) {make 9}
    method name_of_10:sym<Kazakh>($/) {make 10}
    method name_of_11:sym<Kazakh>($/) {make 11}
    method name_of_12:sym<Kazakh>($/) {make 12}
    method name_of_13:sym<Kazakh>($/) {make 13}
    method name_of_14:sym<Kazakh>($/) {make 14}
    method name_of_15:sym<Kazakh>($/) {make 15}
    method name_of_16:sym<Kazakh>($/) {make 16}
    method name_of_17:sym<Kazakh>($/) {make 17}
    method name_of_18:sym<Kazakh>($/) {make 18}
    method name_of_19:sym<Kazakh>($/) {make 19}
    method name_of_20:sym<Kazakh>($/) {make 20}
    method name_of_30:sym<Kazakh>($/) {make 30}
    method name_of_40:sym<Kazakh>($/) {make 40}
    method name_of_50:sym<Kazakh>($/) {make 50}
    method name_of_60:sym<Kazakh>($/) {make 60}
    method name_of_70:sym<Kazakh>($/) {make 70}
    method name_of_80:sym<Kazakh>($/) {make 80}
    method name_of_90:sym<Kazakh>($/) {make 90}
    method name_of_100:sym<Kazakh>($/) {make 100}
    method suffix_for_100:sym<Kazakh>($/) {make 100}
    method name_of_1000:sym<Kazakh>($/) {make 1_000}
    method name_of_1000000:sym<Kazakh>($/) {make 1_000_000}
    method name_of_bil:sym<Kazakh>($/) {make 1_000_000_000}
    method name_of_tril:sym<Kazakh>($/) {make 1_000_000_000_000}
}
