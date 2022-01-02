use v6;

use Lingua::NumericWordForms::Actions::WordedNumberSpec;
use Lingua::NumericWordForms::Roles::Koremutake::WordedNumberSpec;

class Lingua::NumericWordForms::Actions::Koremutake::WordedNumberSpec
        is Lingua::NumericWordForms::Actions::WordedNumberSpec {
    method numeric-word-form:sym<Koremutake>($/){ make koremutake-to-integer($/.Str)<Number> }
}
