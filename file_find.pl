#!/usr/bin/perl
############demonstrates use of File::Find####
##written by Ashish.A.Nair
##############################################

use File::Find;
@files;
@dirpath = qw(/root/myscripts/perl/);
find(sub {
	   push @files,$File::Find::name if ( -f $File::Find::name and /\.txt$/);
         }, @dirpath);
print join "\n",@files;
print "\n";
