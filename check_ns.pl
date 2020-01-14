#!/usr/bin/perl

$no_args = 77;
$num_of_args = "$#ARGV" + 1;
if ("$num_of_args" < 1 ) {
print "Usage: $0 <doman-name> \n";
exit;
}

system("nslookup","$ARGV[0]");
