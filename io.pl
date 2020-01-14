#!/usr/bin/perl

###########Ashish.A.Nair##############
#reads from a file & o/p to the screen
######################################

$file=fstab;

open($FH,'<',$file) or die "could not open $file $!";
while($line = <$FH>) {
chomp($line);
print "$line \n";

}
