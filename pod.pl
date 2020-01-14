#!/usr/bin/perl

print "This is a test program to demonstrate POD \n";

=head1 Demo of a POD
This program does nothing, apart from explaining some minor details about POD tags
This will print everything until it encounters a "=cut" at the start of a line
=cut

print "This will not be printed in perldoc \n";
