#!/usr/bin/perl
use Getopt::Long qw(GetOptions);

GetOptions("os=s" => \$os) or die ;
if (not defined $os) {
@flavour = ("Aix", "Solaris", "Linux", "HPUX");
print "Enter your favourite choice of OS \n";
foreach $num(0..$#flavour) {
print "$num) $flavour[$num] \n";
}
$choice = <STDIN>;

if (defined $flavour[$choice]) {
$os = $flavour[$choice];
} else {
print "Bad selection \n";
exit;
}
}
print "You selected $os \n";
