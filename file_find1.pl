#!/usr/bin/perl
use File::Find;
@files;
@dirpath = qw(/root/myscripts/perl);
find(sub {
      push @files,$File::Find::name if (-f $File::Find::name and /\.(txt|xml)$/);
         }, @dirpath);

print join "\n",@files;
print "\n";
