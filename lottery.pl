#!/usr/bin/perl

print "Do you have a lottery ticket (y/n): \n";
$resp = <STDIN>;
chomp($resp);
if ($resp eq "y" | $resp eq "Y") {
$sec = int(rand(10));
print "Enter the number in your lottery ticket \n";
$lott = <STDIN>;
chomp($lott);
if ($sec == $lott) {
print "you won \n";
} else {
print "Better luck next time \n";
}
} else {
print "Purchase a ticket first \n";
exit;
}
