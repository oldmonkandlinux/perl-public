#!/usr/bin/perl

print "Enter your name \n";
$name = <STDIN>;
chomp($name);
print "Enter your age \n";
$age = <STDIN>;
chomp($age);
if ($age < 0) {
print "Age entered is in negative \nexiting.. \n";
exit
}
print "My name is $name and age is $age \n";
