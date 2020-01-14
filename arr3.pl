#!/usr/bin/perl
use Getopt::Long;
use Data::Dumper;
@flavours = ("Linux", "Aix", "Solaris", "HPUX");
$valid;
GetOptions("os=s" => \$os, 
           "force" => \$force,
) or exit;

if ($os and not $force) {
$valid;
foreach $c (@flavours) {
#print "$c \n";
if ($c eq $os) {
$valid = 1;
}
}
if (not $valid) {

print "OS $os is not a valid Unix OS \n";
$color = '';
exit;
}
}
 
if ($os and $force) {
$force = 1;
print "selected OS is $os \n";
exit;
}

if (not $os) {
print "Select an OS number: \n";
foreach $i(0..$#flavours){
print "$i) $flavours[$i] \n";
}
$opt = <STDIN>;
chomp($opt);
if (defined $flavours[$opt]) {
$os = $flavours[$opt]; 
} else {
print "Bad selection \n";
exit;
}
}
print "Selcted os is $os \n";
#print Dumper(@flavours);
