#!/usr/bin/perl


$name = print_name("Ashish");
print "My name is $name \n";

sub print_name {
($fname) = @_;
return $fname;
}


$result = print_result(1, 2);
print "Result is $result \n";

sub print_result {
$a = shift;
$b = shift;
$c = eval $a + $b;
return $c;
}
