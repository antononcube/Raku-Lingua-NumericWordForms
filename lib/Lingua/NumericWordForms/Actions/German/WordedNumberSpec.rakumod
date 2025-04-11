use v6;

use Lingua::NumericWordForms::Actions::WordedNumberSpec;

class Lingua::NumericWordForms::Actions::German::WordedNumberSpec
        is Lingua::NumericWordForms::Actions::WordedNumberSpec {

    method numeric-word-form:sym<German>($/) { make $/.values[0].made }

    method name_of_0:sym<German>($/) {make 0}
    method name_of_1:sym<German>($/) {make 1}
    method name_of_2:sym<German>($/) {make 2}
    method name_of_3:sym<German>($/) {make 3}
    method name_of_4:sym<German>($/) {make 4}
    method name_of_5:sym<German>($/) {make 5}
    method name_of_6:sym<German>($/) {make 6}
    method name_of_7:sym<German>($/) {make 7}
    method name_of_8:sym<German>($/) {make 8}
    method name_of_9:sym<German>($/) {make 9}
    method name_of_10:sym<German>($/) {make 10}
    method name_of_11:sym<German>($/) {make 11}
    method name_of_12:sym<German>($/) {make 12}
    method name_of_13:sym<German>($/) {make 13}
    method name_of_14:sym<German>($/) {make 14}
    method name_of_15:sym<German>($/) {make 15}
    method name_of_16:sym<German>($/) {make 16}
    method name_of_17:sym<German>($/) {make 17}
    method name_of_18:sym<German>($/) {make 18}
    method name_of_19:sym<German>($/) {make 19}
    method name_of_20:sym<German>($/) {make 20}
    method name_of_30:sym<German>($/) {make 30}
    method name_of_40:sym<German>($/) {make 40}
    method name_of_50:sym<German>($/) {make 50}
    method name_of_60:sym<German>($/) {make 60}
    method name_of_70:sym<German>($/) {make 70}
    method name_of_80:sym<German>($/) {make 80}
    method name_of_90:sym<German>($/) {make 90}
    method name_of_100:sym<German>($/) {make 100}
    method name_of_1000:sym<German>($/) {make 1_000}
    method name_of_10000:sym<German>($/) {make 10_000}
    method name_of_1000000:sym<German>($/) {make 1_000_000}
    method name_of_1000000000:sym<German>($/) {make 1_000_000_000}
    method name_of_1000000000000:sym<German>($/) {make 1_000_000_000_000}
}
