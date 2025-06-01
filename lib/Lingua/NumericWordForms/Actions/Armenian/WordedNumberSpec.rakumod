use v6;

use Lingua::NumericWordForms::Actions::WordedNumberSpec;

class Lingua::NumericWordForms::Actions::Armenian::WordedNumberSpec
        is Lingua::NumericWordForms::Actions::WordedNumberSpec {
    
    method worded_number_100s:sym<Armenian>($/)  { make $<name_of_100> ?? 100 !! $<name_2_to_9>.made * 100 }

    method worded_number_up_to_100:sym<Armenian>($/) {
        if $<name_of_10s> and $<name_1_to_10> {
            make $<name_of_10s>.made + $<name_1_to_10>.made
        } elsif $<name_of_10s> {
            make $<name_of_10s>.made
        } else {
            make $<name_up_to_19>.made
        }
    }
      
    method name_of_0:sym<Armenian>($/) {make 0}
    method name_of_1:sym<Armenian>($/) {make 1}
    method name_of_2:sym<Armenian>($/) {make 2}
    method name_of_3:sym<Armenian>($/) {make 3}
    method name_of_4:sym<Armenian>($/) {make 4}
    method name_of_5:sym<Armenian>($/) {make 5}
    method name_of_6:sym<Armenian>($/) {make 6}
    method name_of_7:sym<Armenian>($/) {make 7}
    method name_of_8:sym<Armenian>($/) {make 8}
    method name_of_9:sym<Armenian>($/) {make 9}
    method name_of_10:sym<Armenian>($/) {make 10}
    method name_of_11:sym<Armenian>($/) {make 11}
    method name_of_12:sym<Armenian>($/) {make 12}
    method name_of_13:sym<Armenian>($/) {make 13}
    method name_of_14:sym<Armenian>($/) {make 14}
    method name_of_15:sym<Armenian>($/) {make 15}
    method name_of_16:sym<Armenian>($/) {make 16}
    method name_of_17:sym<Armenian>($/) {make 17}
    method name_of_18:sym<Armenian>($/) {make 18}
    method name_of_19:sym<Armenian>($/) {make 19}
    method name_of_20:sym<Armenian>($/) {make 20}
    method name_of_30:sym<Armenian>($/) {make 30}
    method name_of_40:sym<Armenian>($/) {make 40}
    method name_of_50:sym<Armenian>($/) {make 50}
    method name_of_60:sym<Armenian>($/) {make 60}
    method name_of_70:sym<Armenian>($/) {make 70}
    method name_of_80:sym<Armenian>($/) {make 80}
    method name_of_90:sym<Armenian>($/) {make 90}
    method name_of_100:sym<Armenian>($/) {make 100}
    method suffix_for_100:sym<Armenian>($/) {make 100}
    method name_of_1000:sym<Armenian>($/) {make 1_000}
    method name_of_1000000:sym<Armenian>($/) {make 1_000_000}
    method name_of_bil:sym<Armenian>($/) {make 1_000_000_000}
    method name_of_tril:sym<Armenian>($/) {make 1_000_000_000_000}
}
