#!/usr/bin/perl


print "Name of the script is $0 \n";
if (defined $ARGV[0]) {
print "$ARGV[0] is the first argument \n";
}
 
#if (not defined $ARGV[1]) {
#print "Second argument is not defined \n";
#}
if (defined $ARGV[1]) {
print "$ARGV[1] is the Second argument \n";
}
if (defined $ARGV[2]) {
print "$ARGV[2] is the third argument \n";
}
if (defined $ARGV[3]) {
print "$ARGV[3] is the fourth argument \n";
}
#foreach $names (0..$#ARGV){
#print Pparameters entered are $ARGV[$names] \n";
#}
print "All the parameters are @ARGV \n";
if ("$#ARGV" < 9) {
print "The program needs atleast 9 parameters to run \n";
print "Usage $0 <Param1> <Param2> .... <Param9> \n";
exit;
}
