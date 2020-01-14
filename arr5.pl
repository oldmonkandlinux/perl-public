#!/usr/bin/perl
use Data::Dumper;
$file = "digits.txt";
@arr;
$count;
open(FH,'<', $file) or die "could not open file $! \n";
while ($line = <FH>) {
chomp($line);
@arr = split(//,$line);
@sorted = sort {$a <=> $b} @arr;
print Dumper(@sorted);
}
