#!/usr/bin/perl

$file = "access.log";
$remote;
$local;
open(FH,'<', $file) or die "could not open $file $! \n";
while($line = <FH>) {
$len = index($line," ");
$ip = substr($line,0,$len);
if ($ip eq "127.0.0.1") {
$local++;
} else {
$remote++;
}
}
$str = <<END;

connectivity report is as follows:
---------------------
Local : $local
Remote: $remote

END

print $str;
