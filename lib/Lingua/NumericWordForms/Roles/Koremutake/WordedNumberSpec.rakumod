use v6;

use Lingua::NumericWordForms::Roles::WordedNumberSpec;

#-----------------------------------------------------------

role Lingua::NumericWordForms::Roles::Koremutake::WordedNumberSpec
        does Lingua::NumericWordForms::Roles::WordedNumberSpec {

    rule numeric-word-form:sym<Koremutake> { ([\w]+) <?{ koremutake-to-integer($0.Str)<Recognized> }> }

}

#-----------------------------------------------------------
# Much of the code below is taken:
# https://github.com/stmuk/p6-String-Koremutake
# It is an archived repository at this point (2022-01-01).

my @phonemes = <ba be bi bo bu by da de di do du dy fa fe fi
    fo fu fy ga ge gi go gu gy ha he hi ho hu hy ja je ji jo ju jy ka ke
    ki ko ku ky la le li lo lu ly ma me mi mo mu my na ne ni no nu ny pa
    pe pi po pu py ra re ri ro ru ry sa se si so su sy ta te ti to tu ty
    va ve vi vo vu vy bra bre bri bro bru bry dra dre dri dro dru dry fra
    fre fri fro fru fry gra gre gri gro gru gry pra pre pri pro pru pry
    sta ste sti sto stu sty tra tre>;

my %phoneme_to_number = @phonemes Z=> ^@phonemes.elems;
my %number_to_phoneme = %phoneme_to_number.invert;

sub numbers-to-koremutake($numbers) {
    my $string;
    for @$numbers -> $n {
        fail "0 <= $n <= 127" unless (0 <= $n) && ($n <= 127);
        $string ~= %number_to_phoneme{$n};
    }
    return $string;
}

sub integer-to-koremutake (Int:D $integer is copy) is export {
    my @numbers;
    @numbers = (0) if $integer == 0;

    while ($integer != 0) {
        @numbers.push( $integer % 128);
        $integer = floor($integer/128);
    }

    return numbers-to-koremutake([reverse @numbers]);
}


sub koremutake-to-numbers($string --> Hash ) {
    my @numbers;
    my $phoneme;
    my @chars = $string.comb;

    while @chars {

        $phoneme ~= shift @chars;
        next unless $phoneme ~~ /<[aeiouy]>/;
        my $number = %phoneme_to_number{$phoneme};

        without $number {
            return %(:!Recognized, Numbers => @numbers )
        }

        @numbers.push($number);
        $phoneme = '';
    }

    return %(Recognized => @numbers.elems > 0, Numbers => @numbers);
}

sub koremutake-to-integer(Str:D $string) is export {
    my %res = koremutake-to-numbers($string);
    if not %res<Recognized> {
        return %(:!Recognized, Number=>0)
    }
    my $numbers = %res<Numbers>;
    my $integer = 0;

    for @$numbers -> $number {
        $integer = ($integer * 128) + $number;
    }

    return %(:Recognized, Number=>$integer);
}



