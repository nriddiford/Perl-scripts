use strict;
use warnings;
use Email::Send;
use Email::Send::Gmail;
use Email::Simple::Creator;

my $email = Email::Simple->create(
header => [
	From    => 'nickriddiford@gmail.com',
	To      => 'nickriddiford@me.com',
	Subject => 'Automated email from script',
],
body 			=> '***',
);

my $sender = Email::Send->new(
{
mailer      => 'Gmail',
mailer_args => [
	username 		=> 'nickriddiford@gmail.com',
	password 		=> '***...dd',
	]
}
);
eval { $sender->send($email) };
die "Error sending email: $@" if $@;
