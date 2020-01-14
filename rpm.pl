#!/usr/bin/perl

###############Ashish.A.Nair################
#checks if the rpm can be installed
############################################

$num_of_args = $#ARGV + 1;
$filename = "$ARGV[0].test";
if ($num_of_args != 1 ){
print "Usage: rpm.pl <rpm-name> \n";
exit;
}
open($FH, '>', $filename) or die "Could not open $filename $!"; 
{
select $FH;
print "\nArchive description \n";
print "----------------------- \n";
$command1 = `rpm -qpi $ARGV[0] 2>/dev/null`;
print "$command1 \n";


print "\n Archive listing \n";
print "----------------------- \n";
$command2 = `rpm -qpl $ARGV[0] 2>/dev/null`;
print "$command2 \n";

########There are 2 ways to check the status
########The below shown method is the simplest one
#print "\n A query test \n";
#print "----------------------- \n";
#$command3 = "rpm -i --test $ARGV[0] 2>/dev/null";
#system($command3);
#if ($? == 0 ) {
#print  "$ARGV[0] can be installed\n"
#}

#######The second method is to divide the status by 256
#######to get the actual status
print "\n A query test \n";
print "----------------------- \n";
$command3 = "rpm -i --test $ARGV[0] 2>/dev/null";
$status = system($command3);
if (($status/256) == 0) {
print "$ARGV[0] can be installed\n";
}else {
print "$ARGV[0] can not be installed\n";
}
}
close($FH);
