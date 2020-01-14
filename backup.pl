#!/usr/bin/perl
###########Ashish.A.Nair###############
##finds files modified the previous day
#######################################

use File::Find;
use Archive::Tar;
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
$year_a = $year + 1900;   ##because year will be number of years since 1900.So we have to add 1900 to get the current year.
$mon_a = $mon + 1;        ##Months start from zero so we add 1 to get the actual month
@files;
@dirpath = qw(/root/myscripts/perl/);
find(sub {
       push @files,$File::Find::name if ( -f $File::Find::name and int(-M $_) < 1);
         }, @dirpath);
$backup_file = "backup_$mday-$mon_a-$year_a";
$archive = $ARGV[0] || $backup_file;
$tar = Archive::Tar->new;
$tar->add_files(@files);
$tar->write("$archive.tar");
print "Files have been backed-up in $archive.tar, The files that are backed-up are: \n";
print "------------------------------------------------------------------------------ \n";
@backup_files = Archive::Tar->list_archive("$archive.tar");
print join "\n",@backup_files;
print "\n";

