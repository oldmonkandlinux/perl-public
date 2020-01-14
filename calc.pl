#!/usr/bin/perl
use Switch;

print "Enter a number \n";
$num1 = <STDIN>;
chomp($num1);
print "Enter another number \n";
$num2 = <STDIN>;
chomp($num2);
print "Enter an operation(+,*,-,/) \n";
$opr = <STDIN>;
chomp($opr);
switch($opr) {
case '+'  {
$result = $num1 + $num2; 
print "Result is $result \n";
}
case '-'  { 
$result = $num1 - $num2; 
print "Result is $result \n";
}
case '*'  { 
$result = $num1 * $num2; 
print "Result is $result \n";
}
case '/'  { 
$result = $num1 / $num2; 
print "Result is $result \n";
}
else      { print "The operand does not match either of +,*,-,/ \n"; }
}

