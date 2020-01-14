#!/usr/bin/perl

$a = 0;
while ($a < 10) {
if ( $a == 5 ) {
$a = $a + 1;
next;        ###skips printing 5
}
if ($a == 8) {
last;
}
print "$a \n";
$a = $a + 1;
}
