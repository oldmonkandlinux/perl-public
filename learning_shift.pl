#!/usr/bin/perl

#$num_of_args = $#ARGV + 1;
$num_of_args = scalar (@ARGV);   ###Another method to get the lenth of an array
until($num_of_args == 0) {
print "$ARGV[0] \n";
shift;
$num_of_args--;
}
