use strict;
use warnings;
use Email::Send;
use Email::Send::Gmail;
use Email::Simple::Creator;

my $email = Email::Simple->create(
header => [
	From    => 'nridd22@gmail.com',
	To      => 'nridd22@me.com',
	Subject => 'Automated email from script',
],
body 			=> '***',
);

my $sender = Email::Send->new(
{
mailer      => 'Gmail',
mailer_args => [
	username 		=> 'nridd22@gmail.com',
	password 		=> '***...dd',
	]
}
);
eval { $sender->send($email) };
die "Error sending email: $@" if $@;
