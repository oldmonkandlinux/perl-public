#!/usr/bin/perl

calc_total(Ashish,22,33);
print <<"END";

Result is:
-----------
Name :  $name
Total:  $total_marks


END

sub calc_total {
($name,$sub1,$sub2) = @_;
$total_marks = $sub1 + $sub2;
return $name,$total_marks;
}

