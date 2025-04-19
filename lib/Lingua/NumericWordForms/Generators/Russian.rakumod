use v6.d;

# It does not need to be class, but it started as one.
class Lingua::NumericWordForms::Generators::Russian {

    method generate($num = Nil) {
        my $e = $num.Str;
        $e .= subst(/^0+/, "");
        if !$e { $e = '0' }

        my @t = "", "один", "два", "три", "четыре", "пять", "шесть", "семь", "восемь", "девять";
        my @r = "десять", "одиннадцать", "двенадцать", "тринадцать", "четырнадцать", "пятнадцать", "шестнадцать", "семнадцать", "восемнадцать", "девятнадцать";
        my @n = "", "десять", "двадцать", "тридцать", "сорок", "пятьдесят", "шестьдесят", "семьдесят", "восемьдесят", "девяносто";
        my @a = "", "сто", "двести", "триста", "четыреста", "пятьсот", "шестьсот", "семьсот", "восемьсот", "девятьсот";

        return "ноль" if $e eq "0";
        return "минус " ~ self.generate($e.substr(1)) if $e.starts-with("-");

        my @o = $e.comb.reverse.rotor(3, :partial)».reverse».join.reverse;

        my @i = "", ["тысяча", "тысячи", "тысяч"], ["миллион", "миллиона", "миллионов"],
                ["миллиард", "миллиарда", "миллиардов"], ["триллион", "триллиона", "триллионов"];
        my @c;

        @o.kv.map(-> $l, $e is copy {
            if $e ne "000" {
                my $s = @o.elems - 1 - $l;
                my $u = "";
                if $e.chars == 3 {
                    $u ~= @a[$e.substr(0, 1).Int] ~ " ";
                    $e = $e.substr(1);
                }
                if $e.chars == 2 {
                    if $e.substr(0, 1) eq "1" {
                        $u ~= @r[$e.substr(1).Int] ~ " ";
                        $e = "";
                    } else {
                        $u ~= @n[$e.substr(0, 1).Int] ~ " ";
                        $e = $e.substr(1);
                    }
                }
                if $e.chars == 1 && $e ne "0" {
                    $u ~= $s == 1 ?? $e eq "1" ?? "одна " !! $e eq "2" ?? "две " !! @t[$e.Int] ~ " " !! @t[$e.Int] ~ " ";
                }
                if $s > 0 {
                    my $f = $e.chars ≥ 1 ?? $e.substr(*- 1).Int !! 0;
                    my $d = $e.chars ≥ 2 ?? $e.substr(*- 2).Int !! $f;
                    $u ~= @i[$s][$d ≥ 11 && $d ≤ 19 ?? 2 !! $f == 1 ?? 0 !! $f ≥ 2 && $f ≤ 4 ?? 1 !! 2] ~ " ";
                }
                @c.push($u.trim);
            }
        });

        return @c.join(" ");
    }
}
