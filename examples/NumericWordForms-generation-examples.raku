use v6;

use lib './lib';
use lib '.';

use Lingua::NumericWordForms;

say to-numeric-word-form('123;232; 898_934').raku;

say to-numeric-word-form([123, '232', 898_934]).raku;

say to-numeric-word-form([123, 449, 898_934, '3423'], 'koremutake').raku;