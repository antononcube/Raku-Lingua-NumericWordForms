use v6.d;

class Lingua::NumericWordForms::Generators::Armenian {
    my @units = <մեկ երկու երեք չորս հինգ վեց յոթ ութ ինն>;
    my @tens = <տասը քսան երեսուն քառասուն հիսուն վաթսուն յոթանասուն ութսուն իննսուն>;
    my @hundreds = <մեկ հարյուր երկու հարյուր երեք հարյուր չորս հարյուր հինգ հարյուր վեց հարյուր յոթ հարյուր ութ հարյուր ինն հարյուր>;
    my @big_units = '', 'հազար', 'միլիոն', 'միլիարդ';
    # 10^0, 10^3, 10^6, 10^9

    sub three-digit-armenian(Int $n) {
        return '' if $n == 0;

        my $result = '';

        my $hundreds = $n div 100;
        my $remainder = $n % 100;

        # Hundreds
        if $hundreds {
            if $hundreds == 1 {
                $result ~= 'հարյուր';
            } else {
                $result ~= @units[$hundreds - 1] ~ ' հարյուր';
            }
            $result ~= ' ' if $remainder;
        }

        # 10-19 is "տասը" + unit
        if $remainder >= 10 && $remainder < 20 {
            $result ~= 'տասը';
            if $remainder > 10 {
                $result ~= ' ' ~ @units[$remainder - 11];
            }
            return $result;
        }

        #`[
        if $remainder >= 11 && $remainder <= 19 {
            $result ~= 'տասն ' ~ @units[$remainder - 11];
            return $result;
        }
        elsif $remainder == 10 {
            $result ~= 'տասը';
            return $result;
        }
        ]

        # Tens
        my $tens = $remainder div 10;
        my $units = $remainder % 10;
        if $tens {
            $result ~= @tens[$tens - 1];
            $result ~= ' ' if $units;
        }

        # Units
        if $units {
            $result ~= @units[$units - 1];
        }
        $result;
    }

    method generate(Int:D $n is copy) {
        return 'զրո' if $n == 0;

        my $result = '';
        my $group = 0;
        while $n > 0 {
            my $part = $n % 1000;
            if $part {
                my $words = three-digit-armenian($part);
                my $big_unit = @big_units[$group];
                $result = $words ~ ($big_unit ?? " $big_unit" !! '') ~ ($result ?? " $result" !! '');
            }
            $n div= 1000;
            $group++;
        }
        $result.subst(/ \s+ $ /, '', :g);
        # Trim trailing spaces
    }
}