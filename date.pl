#!/usr/bin/perl
#################Ashish.A.Nair#################
#usage to archive::tar to create backup
###############################################
use Archive::Tar;
use Data::Dumper;
@file = glob ("/root/myscripts/perl/*");
$tar = Archive::Tar->new;
$tar->add_files(@file);
$tar->write('out.tar');
