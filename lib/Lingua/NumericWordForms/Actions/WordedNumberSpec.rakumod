use v6;

class Lingua::NumericWordForms::Actions::WordedNumberSpec {

    method numeric-word-form:sym<General>($/)     { make $/.values[0].made }

    method worded_number_100s:sym<General>($/) { make $<name_1_to_19>.made * 100 }

    ## These are 10^3 based groupings (most/all Indo-European languages)
    method worded_number_1000s($/)    { make $<worded_number_up_to_1000>    ?? $<worded_number_up_to_1000>.made    * 1_000             !! 1_000 }
    method worded_number_1000000s($/) { make $<worded_number_up_to_1000000> ?? $<worded_number_up_to_1000000>.made * 1_000_000         !! 1_000_000 }
    method worded_number_bils($/)     { make $<worded_number_up_to_bil>     ?? $<worded_number_up_to_bil>.made     * 1_000_000_000     !! 1_000_000_000 }
    method worded_number_trils($/)    { make $<worded_number_up_to_tril>    ?? $<worded_number_up_to_tril>.made    * 1_000_000_000_000 !! 1_000_000_000_000 }

    method worded_number_up_to_100:sym<General>($/) {
        if $<name_of_10s> and $<name_1_to_10> {
            make $<name_of_10s>.made + $<name_1_to_10>.made
        } elsif $<name_of_10s> {
            make $<name_of_10s>.made
        } else {
            make $<name_up_to_19>.made
        }
    }

    method worded_number_up_to_1000($/) {
        if $<worded_number_100s> and $<worded_number_up_to_100> {
            make $<worded_number_100s>.made + $<worded_number_up_to_100>.made
        } elsif $<worded_number_100s> {
            make $<worded_number_100s>.made
        } else {
            make $<worded_number_up_to_100>.made
        }
    }

    method worded_number_up_to_1000000($/) {
        if $<worded_number_1000s> and $<worded_number_up_to_1000> {
            make $<worded_number_1000s>.made + $<worded_number_up_to_1000>.made
        } elsif $<worded_number_1000s> {
            make $<worded_number_1000s>.made
        } else {
            make $<worded_number_up_to_1000>.made
        }
    }

    method worded_number_up_to_bil($/) {
        if $<worded_number_1000000s> and $<worded_number_up_to_1000000> {
            make $<worded_number_1000000s>.made + $<worded_number_up_to_1000000>.made
        } elsif $<worded_number_1000000s> {
            make $<worded_number_1000000s>.made
        } else {
            make $<worded_number_up_to_1000000>.made
        }
    }

    method worded_number_up_to_tril($/) {
        if $<worded_number_bils> and $<worded_number_up_to_bil> {
            make $<worded_number_bils>.made + $<worded_number_up_to_bil>.made
        } elsif $<worded_number_bils> {
            make $<worded_number_bils>.made
        } else {
            make $<worded_number_up_to_bil>.made
        }
    }

    method worded_number_up_to_quad($/) {
        if $<worded_number_trils> and $<worded_number_up_to_tril> {
            make $<worded_number_trils>.made + $<worded_number_up_to_tril>.made
        } elsif $<worded_number_trils> {
            make $<worded_number_trils>.made
        } else {
            make $<worded_number_up_to_tril>.made
        }
    }

    ## These are 10^4 based groupings (East Asia languages)
    method worded_number_sens($/)     { make $<worded_number_up_to_sen>     ?? $<worded_number_up_to_sen>.made     * 1_000             !! 1_000 }
    method worded_number_mans($/)     { make $<worded_number_up_to_man>     ?? $<worded_number_up_to_man>.made     * 10_000            !! 10_000 }
    method worded_number_okus($/)     { make $<worded_number_up_to_oku>     ?? $<worded_number_up_to_oku>.made     * 100_000_000       !! 100_000_000 }
    method worded_number_chos($/)     { make $<worded_number_up_to_cho>     ?? $<worded_number_up_to_cho>.made     * 1_000_000_000_000 !! 1_000_000_000_000 }

    method worded_number_up_to_sen($/) {
        if $<worded_number_100s> and $<worded_number_up_to_100> {
            make $<worded_number_100s>.made + $<worded_number_up_to_100>.made
        } elsif $<worded_number_100s> {
            make $<worded_number_100s>.made
        } else {
            make $<worded_number_up_to_100>.made
        }
    }

    method worded_number_up_to_man($/) {
        if $<worded_number_sens> and $<worded_number_up_to_sen> {
            make $<worded_number_sens>.made + $<worded_number_up_to_sen>.made
        } elsif $<worded_number_sens> {
            make $<worded_number_sens>.made
        } else {
            make $<worded_number_up_to_sen>.made
        }
    }

    method worded_number_up_to_oku($/) {
        if $<worded_number_mans> and $<worded_number_up_to_man> {
            make $<worded_number_mans>.made + $<worded_number_up_to_man>.made
        } elsif $<worded_number_mans> {
            make $<worded_number_mans>.made
        } else {
            make $<worded_number_up_to_man>.made
        }
    }

    method worded_number_up_to_cho($/) {
        if $<worded_number_okus> and $<worded_number_up_to_oku> {
            make $<worded_number_okus>.made + $<worded_number_up_to_oku>.made
        } elsif $<worded_number_okus> {
            make $<worded_number_okus>.made
        } else {
            make $<worded_number_up_to_oku>.made
        }
    }

    method worded_number_up_to_kei($/) {
        if $<worded_number_chos> and $<worded_number_up_to_cho> {
            make $<worded_number_chos>.made + $<worded_number_up_to_cho>.made
        } elsif $<worded_number_chos> {
            make $<worded_number_chos>.made
        } else {
            make $<worded_number_up_to_cho>.made
        }
    }

    # Small numbers
    method name_1_to_10($/)  { make $/.values[0].made }
    method name_2_to_9($/)   { make $/.values[0].made }
    method name_1_to_19($/)  { make $/.values[0].made }
    method name_up_to_19($/) { make $/.values[0].made }
    method name_20_to_29($/) { make $/.values[0].made }
    method name_up_to_29($/) { make $/.values[0].made }

    method name_of_10s($/)   { make $/.values[0].made }

    method name_of_0:sym<General>($/) {make 0}
    method name_of_1:sym<General>($/) {make 1}
    method name_of_2:sym<General>($/) {make 2}
    method name_of_3:sym<General>($/) {make 3}
    method name_of_4:sym<General>($/) {make 4}
    method name_of_5:sym<General>($/) {make 5}
    method name_of_6:sym<General>($/) {make 6}
    method name_of_7:sym<General>($/) {make 7}
    method name_of_8:sym<General>($/) {make 8}
    method name_of_9:sym<General>($/) {make 9}
    method name_of_10:sym<General>($/) {make 10}
    method name_of_11:sym<General>($/) {make 11}
    method name_of_12:sym<General>($/) {make 12}
    method name_of_13:sym<General>($/) {make 13}
    method name_of_14:sym<General>($/) {make 14}
    method name_of_15:sym<General>($/) {make 15}
    method name_of_16:sym<General>($/) {make 16}
    method name_of_17:sym<General>($/) {make 17}
    method name_of_18:sym<General>($/) {make 18}
    method name_of_19:sym<General>($/) {make 19}
    method name_of_20:sym<General>($/) {make 20}
    method name_of_21:sym<General>($/) {make 21}
    method name_of_22:sym<General>($/) {make 22}
    method name_of_23:sym<General>($/) {make 23}
    method name_of_24:sym<General>($/) {make 24}
    method name_of_25:sym<General>($/) {make 25}
    method name_of_26:sym<General>($/) {make 26}
    method name_of_27:sym<General>($/) {make 27}
    method name_of_28:sym<General>($/) {make 28}
    method name_of_29:sym<General>($/) {make 29}
    method name_of_30:sym<General>($/) {make 30}
    method name_of_40:sym<General>($/) {make 40}
    method name_of_50:sym<General>($/) {make 50}
    method name_of_60:sym<General>($/) {make 60}
    method name_of_70:sym<General>($/) {make 70}
    method name_of_80:sym<General>($/) {make 80}
    method name_of_90:sym<General>($/) {make 90}
    method name_of_100:sym<General>($/) {make 100}
    method suffix_for_100:sym<General>($/) {make 100}
    method name_of_1000:sym<General>($/) {make 1_000}
    method name_of_10000:sym<General>($/) {make 10_000}
    method name_of_1000000:sym<General>($/) {make 1_000_000}
    method name_of_bil:sym<General>($/) {make 1_000_000_000}
    method name_of_tril:sym<General>($/) {make 1_000_000_000_000}
    method name_of_sen:sym<General>($/) {make 1_000}
    method name_of_man:sym<General>($/) {make 10_000}
    method name_of_oku:sym<General>($/) {make 100_000_000}
    method name_of_cho:sym<General>($/) {make 1_000_000_000_000}
}
