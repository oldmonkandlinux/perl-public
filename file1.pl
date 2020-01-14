#!/usr/bin/perl

$filename = "add.txt";
$sum = 0;
open(FH, '<',$filename) or die "could not open file $filename $! \n";
while($line = <FH>) {
$sum = $sum + $line;
}
print "Sum of numbers is : $sum \n";
