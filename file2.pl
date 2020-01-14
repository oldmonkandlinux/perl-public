#!/usr/bin/perl

$file = "messages";
$count;
open(FH,'<', $file) or die "could not open $file $! \n";
while($line = <FH>) {
if ($line =~ m/NetworkManager/) {
$count = $count + 1;
}
}
print "NetworkManager appears $count times in the file \n";
