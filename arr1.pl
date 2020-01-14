#!/usr/bin/perl

@options = ("Aix", "Linux", "Solaris", "HPUX");

foreach $opt(1..$#options+1) {
print "$opt) $options[$opt-1] \n";

}
