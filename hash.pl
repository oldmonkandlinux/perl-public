#!/usr/bin/perl
use Data::Dumper;
%count;
$file = "digits.txt";
open( $fh, "<", $file)
    or die "Could not open '$file': $!"; 
while ( $line = <$fh>) {
    chomp $line;
     @words = split / /, $line;
    foreach  $word (@words) {
        $count{$word}++;
    }
}
foreach $word (keys %count) {
    print "$word : $count{$word}\n";
}
