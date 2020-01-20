#!/usr/bin/perl
use Net::SFTP::Foreign; 
$sftp_user = "ashish";
$sftp_ip = "192.168.1.1";
$sftp_file = shift;
$remote = "/var/tmp/$sftp_file";

if (not defined ($sftp_file)) {
print "Please specify a file to transfer \n";
print<<"end";

usage: $0 <Filename>
$0 takes 1 argument, where "Filename" is the name of the file to be transferred
end

exit;
}

$sftp = Net::SFTP::Foreign->new( 
host => $sftp_ip,
user => $sftp_user,
password => 'x',
more => [qw(-o StrictHostKeyChecking=no)] 
);
$sftp->put($sftp_file,$remote) or die "Unable to transfer" .  $sftp->error;
$sftp->disconnect;
