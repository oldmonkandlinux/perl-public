#!/usr/bin/perl
use Data::Dumper;
$file = "stats.txt";
%stat;
open(FH,'<', $file) or die "could not open file $! \n";
while ($line = <FH>) {
chomp $line;
($name, $score) = split /,/, $line;
$stat{$name} = $score;
}
foreach $name (sort keys %stat) {
print "$name   $stat{$name} \n";
}
print "by marks ----------- \n";
foreach $name (sort { $stat{$b} <=> $stat{$a} } keys %stat) {
print "$name   $stat{$name} \n";
}
