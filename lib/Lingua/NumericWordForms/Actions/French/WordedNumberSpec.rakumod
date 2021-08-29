use v6;

use Lingua::NumericWordForms::Actions::WordedNumberSpec;

class Lingua::NumericWordForms::Actions::French::WordedNumberSpec
        is Lingua::NumericWordForms::Actions::WordedNumberSpec {

    method worded_number_100s:sym<French>($/)  { make $<name_of_100> ?? 100 !! $<name_1_to_19>.made * 100 }

    method worded_number_up_to_100:sym<French>($/) {
      if $<name_of_10s> and $<name_1_to_19> {
          make $<name_of_10s>.made + $<name_1_to_19>.made
      } elsif $<name_of_10s> {
          make $<name_of_10s>.made
      } else {
          make $<name_up_to_29>.made
      }
    }
      
    method name_of_0:sym<French>($/) {make 0}
    method name_of_1:sym<French>($/) {make 1}
    method name_of_2:sym<French>($/) {make 2}
    method name_of_3:sym<French>($/) {make 3}
    method name_of_4:sym<French>($/) {make 4}
    method name_of_5:sym<French>($/) {make 5}
    method name_of_6:sym<French>($/) {make 6}
    method name_of_7:sym<French>($/) {make 7}
    method name_of_8:sym<French>($/) {make 8}
    method name_of_9:sym<French>($/) {make 9}
    method name_of_10:sym<French>($/) {make 10}
    method name_of_11:sym<French>($/) {make 11}
    method name_of_12:sym<French>($/) {make 12}
    method name_of_13:sym<French>($/) {make 13}
    method name_of_14:sym<French>($/) {make 14}
    method name_of_15:sym<French>($/) {make 15}
    method name_of_16:sym<French>($/) {make 16}
    method name_of_17:sym<French>($/) {make 17}
    method name_of_18:sym<French>($/) {make 18}
    method name_of_19:sym<French>($/) {make 19}
    method name_of_20:sym<French>($/) {make 20}
    method name_of_21:sym<French>($/) {make 21}
    method name_of_22:sym<French>($/) {make 22}
    method name_of_23:sym<French>($/) {make 23}
    method name_of_24:sym<French>($/) {make 24}
    method name_of_25:sym<French>($/) {make 25}
    method name_of_26:sym<French>($/) {make 26}
    method name_of_27:sym<French>($/) {make 27}
    method name_of_28:sym<French>($/) {make 28}
    method name_of_29:sym<French>($/) {make 29}
    method name_of_30:sym<French>($/) {make 30}
    method name_of_40:sym<French>($/) {make 40}
    method name_of_50:sym<French>($/) {make 50}
    method name_of_60:sym<French>($/) {make 60}
    method name_of_70:sym<French>($/) {make 70}
    method name_of_80:sym<French>($/) {make 80}
    method name_of_90:sym<French>($/) {make 90}
    method name_of_100:sym<French>($/) {make 100}
    method suffix_for_100:sym<French>($/) {make 100}
    method name_of_1000:sym<French>($/) {make 1_000}
    method name_of_1000000:sym<French>($/) {make 1_000_000}
    method name_of_bil:sym<French>($/) {make 1_000_000_000}
    method name_of_tril:sym<French>($/) {make 1_000_000_000_000}
}
