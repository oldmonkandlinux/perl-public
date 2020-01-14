#!/usr/bin/perl

$file = "access.log";
$good_hits;
open(FH,'<', $file) or die "could not open file \n";
while($str = <FH>) {
chomp($str);
$query = q( HTTP/1.1" );
$start = index ($str, $query);
$end = index ($str," ", $start+length($query));
$result = substr($str,$start+length($query),$end-$start-length($query));
if ($result eq 200) {
$good_hits++;
}
}

print "$good_hits \n";
