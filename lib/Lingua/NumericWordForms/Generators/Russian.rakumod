use v6.d;

use Lingua::NumericWordForms::Generators::Bulgarian;
class Lingua::NumericWordForms::Generators::Russian
        is Lingua::NumericWordForms::Generators::Bulgarian {

    submethod !init-digits() {
        self.locale = 'ru';
        self.lang = 'Russian';
        self.lang-native = 'Руский';

        self.misc-strings = (
        'deset' => 'десят',
        'edinadeset' => 'одинадцать',
        'na' => 'на',
        'sto' => 'сотня',
        'sta' => 'ста',
        'stotin' => 'сот',
        'hiliadi' => 'тысач',
        );


        self.digits-initialized = False;
        self.last-and = False;
        self.zero = 'ноль';
        self.infinity = 'безконечность';
        self.and = '';
        self.sep = ' ';
        self.minus = 'минус';
        self.plural = 'ов';
        self.digits =
                0 => [Nil, 'одно', 'два', 'три', 'четыре', 'пять', 'шесть', 'семь', 'восемь', 'девять'],
                1 => [Nil, 'один', 'два', Nil, Nil, Nil, Nil, Nil, Nil, Nil],
                -1 => [Nil, 'одна', Nil, Nil, Nil, Nil, Nil, Nil, Nil, Nil];
        self.exponent{'3'} = 'тысача';

        for 3 .. 9 -> $i {
            self.digits{1}[$i] = self.digits{0}[$i];
        }
        for 2 .. 9 -> $i {
            self.digits{-1}[$i] = self.digits{0}[$i];
        }
        self.digits-initialized = True;
    }

    submethod TWEAK () {
        self!init-digits();
    }

    method generate($num = Nil) {
        my $res = self.Lingua::NumericWordForms::Generators::Bulgarian::generate($num);

        # I do not like this post-tweaking, but it is "quick" to implement
        # and handles exceptions well.
        return $res
                .subst('девятьдесят', 'девяносто', :g)
                .subst('четыредесят', 'сорок', :g)
                .subst('тридесят', 'тридцать', :g)
                .subst('двадесят', 'двадцать', :g)
                .subst('дваста', 'двести', :g)
                .subst(/\h+/, ' ', :g);
    }
}
