use v6.d;

class Lingua::NumericWordForms::Generators::Japanese {
    my %KANJI = (
    0 => '',
    1 => '一',
    2 => '二',
    3 => '三',
    4 => '四',
    5 => '五',
    6 => '六',
    7 => '七',
    8 => '八',
    9 => '九'
    );

    my @SMALL_UNITS = ('', '十', '百', '千');
    my @BIG_UNITS = ('', '万', '億', '兆', '京');  # 10^0, 10^4, 10^8, 10^12, 10^16

    sub four-digit-kanji(Int $n) {
        return '' if $n == 0;
        my $result = '';
        my @digits = $n.comb.reverse; # ones, tens, hundreds, thousands
        for @digits.kv -> $i, $d {
            next if $d == 0;
            my $unit = @SMALL_UNITS[$i];
            # Omit "一" for 十, 百, 千, except for units place (i==0)
            if $d == 1 && $i > 0 {
                $result = $unit ~ $result;
            } else {
                $result = %KANJI{$d} ~ $unit ~ $result;
            }
        }
        $result
    }

    method generate(Int:D $n is copy) {
        return '零' if $n == 0;
        my $result = '';
        my $group = 0;
        while $n > 0 {
            my $part = $n % 10**4;
            if $part {
                $result = four-digit-kanji($part) ~ @BIG_UNITS[$group] ~ $result;
            }
            $n div= 10**4;
            $group++;
        }
        $result;
    }
}
