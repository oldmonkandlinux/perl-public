#!/usr/bin/perl
##########Ashish.A.Nair##################
#This program copies 50 lines of logs
#from the messages file and moves it to
#messages.temp.
#Then empties the actual messages file
########################################

###The copying part is done here####
$file = "messages";
$file2 = "messages.temp";
$count = 1;
@arr1 = 
open ($FH, '<', $file) or die "cannot open $file: $!";
open ($FH2, '>', $file2) or die "cannot open $file: $!";
while ($row = <$FH>) {
chomp($row);
if ($count <= 50)
{
print $FH2 "$row \n";
}
$count++;
}
close FH;
close FH2;

######the emptying of the actual file happens here
$command1 = `cat /dev/null > messages`;

###this can also be done using the system command####
#@arr1 = ('/dev/null', '>', 'messages');
#$status = system('cat',@arr1);
#if ($status == 0){
#print "logs cleaned up \n";
#} 
