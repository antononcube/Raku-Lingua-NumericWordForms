use v6.d;

# Original author: Kouber Saparev
#
# Python implementation by: vshulev / ClaimCompass, Inc
# https://github.com/ClaimCompass/num2cyrillic
#
# Raku implementation Anton Antonov / GitHub/antononcube
# https://github.com/antononcube/Raku-Lingua-NumericWordForms

class Lingua::NumericWordForms::Generators::Bulgarian {
    has Str $.locale is rw = 'bg';
    has Str $.lang is rw = 'Bulgarian';
    has Str $.lang-native is rw = 'Български';

    has %.misc-strings = (
    'deset' => 'десет',
    'edinadeset' => 'единадесет',
    'na' => 'на',
    'sto' => 'сто',
    'sta' => 'ста',
    'sta-set' => [2, 3],
    'stotin' => 'стотин',
    'hiliadi' => 'хиляди',
    );

    has %.digits =
            0 => [Nil, 'едно', 'две', 'три', 'четири', 'пет', 'шест', 'седем', 'осем', 'девет'],
            1 => [Nil, 'един', 'два', Nil, Nil, Nil, Nil, Nil, Nil, Nil],
            -1 => [Nil, 'една', Nil, Nil, Nil, Nil, Nil, Nil, Nil, Nil];

    has Bool $.digits-initialized is rw = False;
    has Bool $.last-and is rw = False;
    has Str $.zero is rw = 'нула';
    has Str $.infinity is rw = 'безкрайност';
    has Str $.and is rw = 'и';
    has Str $.sep is rw = ' ';
    has Str $.minus is rw = 'минус';
    has Str $.plural is rw = 'а';

    has %.exponent = (
    0 => '',
    3 => 'хиляда',
    6 => 'милион',
    9 => 'милиард',
    12 => 'трилион',
    15 => 'квадрилион',
    18 => 'квинтилион',
    21 => 'секстилион',
    24 => 'септилион',
    27 => 'октилион',
    30 => 'ноналион',
    33 => 'декалион',
    36 => 'ундекалион',
    39 => 'дуодекалион',
    42 => 'тредекалион',
    45 => 'кватордекалион',
    48 => 'квинтдекалион',
    51 => 'сексдекалион',
    54 => 'септдекалион',
    57 => 'октодекалион',
    60 => 'новемдекалион',
    63 => 'вигинтилион',
    66 => 'унвигинтилион',
    69 => 'дуовигинтилион',
    72 => 'тревигинтилион',
    75 => 'кваторвигинтилион',
    78 => 'квинвигинтилион',
    81 => 'сексвигинтилион',
    84 => 'септенвигинтилион',
    87 => 'октовигинтилион',
    90 => 'новемвигинтилион',
    93 => 'тригинтилион',
    96 => 'унтригинтилион',
    99 => 'дуотригинтилион',
    102 => 'третригинтилион',
    105 => 'кватортригинтилион',
    108 => 'квинтригинтилион',
    111 => 'секстригинтилион',
    114 => 'септентригинтилион',
    117 => 'октотригинтилион',
    120 => 'новемтригинтилион',
    123 => 'квадрагинтилион',
    126 => 'унквадрагинтилион',
    129 => 'дуоквадрагинтилион',
    132 => 'треквадрагинтилион',
    135 => 'кваторквадрагинтилион',
    138 => 'квинквадрагинтилион',
    141 => 'сексквадрагинтилион',
    144 => 'септенквадрагинтилион',
    147 => 'октоквадрагинтилион',
    150 => 'новемквадрагинтилион',
    153 => 'квинквагинтилион',
    156 => 'унквинкагинтилион',
    159 => 'дуоквинкагинтилион',
    162 => 'треквинкагинтилион',
    165 => 'кваторквинкагинтилион',
    168 => 'квинквинкагинтилион',
    171 => 'сексквинкагинтилион',
    174 => 'септенквинкагинтилион',
    177 => 'октоквинкагинтилион',
    180 => 'новемквинкагинтилион',
    183 => 'сексагинтилион',
    186 => 'унсексагинтилион',
    189 => 'дуосексагинтилион',
    192 => 'тресексагинтилион',
    195 => 'кваторсексагинтилион',
    198 => 'квинсексагинтилион',
    201 => 'секссексагинтилион',
    204 => 'септенсексагинтилион',
    207 => 'октосексагинтилион',
    210 => 'новемсексагинтилион',
    213 => 'септагинтилион',
    216 => 'унсептагинтилион',
    219 => 'дуосептагинтилион',
    222 => 'тресептагинтилион',
    225 => 'кваторсептагинтилион',
    228 => 'квинсептагинтилион',
    231 => 'секссептагинтилион',
    234 => 'септенсептагинтилион',
    237 => 'октосептагинтилион',
    240 => 'новемсептагинтилион',
    243 => 'октогинтилион',
    246 => 'уноктогинтилион',
    249 => 'дуооктогинтилион',
    252 => 'треоктогинтилион',
    255 => 'кватороктогинтилион',
    258 => 'квиноктогинтилион',
    261 => 'сексоктогинтилион',
    264 => 'септоктогинтилион',
    267 => 'октооктогинтилион',
    270 => 'новемоктогинтилион',
    273 => 'нонагинтилион',
    276 => 'уннонагинтилион',
    279 => 'дуононагинтилион',
    282 => 'тренонагинтилион',
    285 => 'кваторнонагинтилион',
    288 => 'квиннонагинтилион',
    291 => 'секснонагинтилион',
    294 => 'септеннонагинтилион',
    297 => 'октононагинтилион',
    300 => 'новемнонагинтилион',
    303 => 'центилион',
    );

    submethod !init-digits() {
        unless $!digits-initialized {
            for 3 .. 9 -> $i {
                %!digits{1}[$i] = %!digits{0}[$i];
            }
            for 2 .. 9 -> $i {
                %!digits{-1}[$i] = %!digits{0}[$i];
            }
            $!digits-initialized = True;
        }
    }

    method new() {
        self.bless();
    }

    submethod TWEAK () {
        self!init-digits();
    }

    method !split-number($num is copy) {
        $num = ~$num if $num ~~ Int:D;
        my @first;
        if $num.chars % 3 != 0 {
            if ($num.substr(1).chars % 3) == 0 {
                @first = $num.substr(0, 1);
                $num = $num.substr(1);
            } elsif ($num.substr(2).chars % 3) == 0 {
                @first = $num.substr(0, 2);
                $num = $num.substr(2);
            }
        }
        my @ret = $num.comb(3);
        return [|@first, |@ret];
    }

    method !discard-empties(@ls) {
        return @ls.grep(*.defined);
    }

    method !show-digits-group($num is copy, $gender = 0, $last = False) {
        $num = +$num;
        my $e = $num % 10;
        # ones
        my $d = ($num - $e) % 100 div 10;
        # tens
        my $s = ($num - $d * 10 - $e) % 1000 div 100;
        # hundreds
        my @ret = Nil xx 6;

        if $s {
            if $s == 1 {
                @ret[1] = %!misc-strings<sto>;
            } elsif $s ∈ %!misc-strings<sta-set> {
                @ret[1] = %!digits{0}[$s] ~ %!misc-strings<sta>;
            } else {
                @ret[1] = %!digits{0}[$s] ~ %!misc-strings<stotin>;
            }
        }

        if $d {
            if $d == 1 {
                if !$e {
                    @ret[3] = %!misc-strings<deset>;
                } else {
                    if $e == 1 {
                        @ret[3] = %!misc-strings<edinadeset>;
                    } else {
                        @ret[3] = %!digits{1}[$e] ~ %!misc-strings<na> ~ %!misc-strings<deset>;
                    }
                    $e = 0;
                }
            } else {
                @ret[3] = %!digits{1}[$d] ~ %!misc-strings<deset>;
            }
        }

        if $e {
            @ret[5] = %!digits{$gender}[$e];
        }

        if self!discard-empties(@ret).elems > 1 {
            if $e {
                @ret[4] = $!and;
            } else {
                @ret[2] = $!and;
            }
        }

        if $last {
            if !$s || self!discard-empties(@ret).elems == 1 {
                @ret[0] = $!and;
            }
            $!last-and = True;
        }

        return @ret.grep(*.defined).join($!sep);
    }

    method !to-words($num = 0) {
        my @num-groups = self!split-number($num);
        my $sizeof-num-groups = @num-groups.elems;

        my @ret = Nil xx ($sizeof-num-groups + 1);
        my $ret-minus = '';

        if $num < 0 {
            $ret-minus = $!minus ~ $!sep;
        } elsif $num == 0 {
            return $!zero;
        }

        my $i = $sizeof-num-groups - 1;
        my $j = 1;
        while $i >= 0 {
            @ret[$j] //= '';

            my $pow = $sizeof-num-groups - $i;
            if @num-groups[$i] != '000' {
                if +@num-groups[$i] > 1 {
                    if $pow == 1 {
                        @ret[$j] ~= self!show-digits-group(@num-groups[$i], 0, !$!last-and && $i) ~ $!sep;
                        @ret[$j] ~= %!exponent{($pow - 1) * 3};
                    } elsif $pow == 2 {
                        @ret[$j] ~= self!show-digits-group(@num-groups[$i], -1, !$!last-and && $i) ~ $!sep;
                        @ret[$j] ~= %!misc-strings<hiliadi> ~ $!sep;
                    } else {
                        @ret[$j] ~= self!show-digits-group(@num-groups[$i], 1, !$!last-and && $i) ~ $!sep;
                        @ret[$j] ~= %!exponent{($pow - 1) * 3} ~ $!plural ~ $!sep;
                    }
                } else {
                    if $pow == 1 {
                        @ret[$j] ~= self!show-digits-group(@num-groups[$i], 0, !$!last-and && $i) ~ $!sep;
                    } elsif $pow == 2 {
                        @ret[$j] ~= %!exponent{($pow - 1) * 3} ~ $!sep;
                    } else {
                        @ret[$j] ~= %!digits{1}[1] ~ $!sep ~ %!exponent{($pow - 1) * 3} ~ $!sep;
                    }
                }
            }

            $i--;
            $j++;
        }

        @ret = self!discard-empties(@ret);
        @ret .= reverse;
        return $ret-minus ~ @ret.join('');
    }

    method generate($num = Nil) {
        return '' if $num ~~ Nil;
        return self!to-words($num).trim;
    }
}
