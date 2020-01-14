#!/usr/bin/perl


$name = 'Ashish';
$age = 100;
$occ = service;
$str = <<"END";

Name:       $name
Age :       $age
Occupation: $occ
END
$str1 = <<'END';

Name:       $name
Age :       $age
Occupation: $occ
END

print $str;
print $str1;
