#!/usr/bin/perl
use Data::Dumper;
$file = "digits.txt";
$count;
open(FH,'<', $file) or die "could not open file $! \n";
while ($line = <FH>) {
chomp($line);
$count++;
}
print "Number of lines in the file is $count \n";

