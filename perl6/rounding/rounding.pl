use v6;

my $filename = @*ARGS[0];
my $fh = open $filename;
my $numOfLists = $fh.get;

my @accum = [];

for $fh.lines -> $line {
    my ($a, $b) = $line.split(' ');
    if $a % $b * 10 div +$b == 5 {
        @accum.push(+$a div +$b + 1);
    } else {
        @accum.push(+$a div +$b);
    }
}

say @accum;