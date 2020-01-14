#!/usr/bin/perl

#$log_dir = "/root/myscripts/shell";
$command1 = `cat /dev/null > messages`;
$command2 = `cat /dev/null > wtmp`;

print "logs cleaned up \n";


