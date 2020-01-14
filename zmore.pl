#!/usr/bin/perl

########Ashish.A.Nair#################
##simulation of zcat with more
######################################

$num_of_args = scalar @ARGV;
if ( "$num_of_args" == 0) {
print "The program requires one argument \n";
print "Usage: $0 filename \n";
exit 88;
}
$filename = $ARGV[0];
if ($filename =~ (/[a-zA-Z]\.gz/)) {
$command = `zcat $filename|more`;
print "$command \n";
} else 
{
print "$filename is not a gz file \n";
exit 89;
}
