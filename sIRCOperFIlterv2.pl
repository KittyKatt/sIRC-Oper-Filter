##########################################
##         IRCop Filter Script          ##
##              for XChat               ##
##                                      ##
##           Created for the            ##
##            SilverIRC OPs             ##
##                                      ##
##          (c)2010 KittyKatt           ##
##########################################
##         feel free to edit it         ##
##########################################


$SCRIPTNAME = "SilverIRC Oper-Filter";
$VERSION = "2.0";
 
IRC::register($SCRIPTNAME,$VERSION,"","");
IRC::print("\cB\cC26$SCRIPTNAME $VERSION Successfully Loaded.\cO\n");
IRC::add_command_handler("", "ircops_input");
IRC::add_message_handler("NOTICE", "ircops_handler");

sub ircops_input {
	my $channel = IRC::get_info(2);
	$line = shift(@_);
	if($channel eq "(globops)") {
		IRC::command("/globops $line");
		return 1;
	}
	return 0;
}

sub ircops_handler {
	my $server = IRC::get_info(3);
	$line = shift(@_);
	($blah, $nick, $host, $pm, $chan, $msg) = split (/ |!|:/, $line, 6);
	if($msg =~ /^\*\*\* REMOTECONNECT/) {
		IRC::print_with_channel("\cB\cC18 $msg \cB\cC0","(snotices)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* CONNECT/) {
		IRC::print_with_channel("\cB\cC18 $msg \cB\cC0","(snotices)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* REMOTEQUIT/) {
		IRC::print_with_channel("\cB\cC18 $msg \cB\cC0","(snotices)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* QUIT/) {
		IRC::print_with_channel("\cB\cC18 $msg \cB\cC0","(snotices)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* REMOTEKILL/) {
		IRC::print_with_channel("\cB\cC18 $msg \cB\cC0","(snotices)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* KILL/) {
		IRC::print_with_channel("\cB\cC18 $msg \cB\cC0","(snotices)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* DEBUG/) {
		IRC::print_with_channel("\cB\cC20 $msg \cB\cC0","(snotices)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* REMOTELINK/) {
		IRC::print_with_channel("\cB\cC19 $msg \cB\cC0","(snotices)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* LINK/) {
		IRC::print_with_channel("\cB\cC19 $msg \cB\cC0","(snotices)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* REMOTEOPER/) {
		IRC::print_with_channel("\cB\cC30 $msg \cB\cC0","(snotices)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* OPER/) {
		IRC::print_with_channel("\cB\cC30 $msg \cB\cC0","(snotices)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* REMOTEANNOUNCEMENT/) {
		IRC::print_with_channel("\cB\cC20 $msg \cB\cC0","(snotices)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* ANNOUNCEMENT/) {
		IRC::print_with_channel("\cB\cC20 $msg \cB\cC0","(snotices)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* STATS/) {
		IRC::print_with_channel("\cB\cC20 $msg \cB\cC0","(snotices)",$server);
		return 1;
        } elsif($msg =~ /^\*\*\* REMOTEGLOBOPS/) {
		IRC::print_with_channel("\cB\cC23 $msg \cB\cC0","(snotices)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* GLOBOPS/) {
		IRC::print_with_channel("\cB\cC23 $msg \cB\cC0","(snotices)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* XLINE/) {
		IRC::print_with_channel("\cB\cC20 $msg \cB\cC0","(snotices)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* REMOTECHANCREATE/) {
		IRC::print_with_channel("\cB\cC27 $msg \cB\cC0","(snotices)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* CHANCREATE/) {
		IRC::print_with_channel("\cB\cC27 $msg \cB\cC0","(snotices)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* REMOTENICK/) {
		IRC::print_with_channel("\cB\cC27 $msg \cB\cC0","(snotices)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* NICK/) {
		IRC::print_with_channel("\cB\cC27 $msg \cB\cC0","(snotices)",$server);
		return 1;
	}
	return 0;
}

1;
#end
