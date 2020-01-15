#!/usr/bin/perl
$file = "access.log";
%count;
open(FH,'<', $file) or die "could not open file $! \n";
while ($line = <FH>) {
$len = index($line," ");
$ip = substr($line,0,$len);
#print "$ip \n";
$count{$ip}++;
}

foreach $i (keys %count) {
print "$i  $count{$i} \n";
}
