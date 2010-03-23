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
$VERSION = "1.0";
 
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
		IRC::command("/query -nofocus (client)");
		IRC::print_with_channel($msg,"(client)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* CONNECT/) {
		IRC::command("/query -nofocus (client)");
		IRC::print_with_channel($msg,"(client)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* REMOTEQUIT/) {
		IRC::command("/query -nofocus (client)");
		IRC::print_with_channel($msg,"(client)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* QUIT/) {
		IRC::command("/query -nofocus (client)");
		IRC::print_with_channel($msg,"(client)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* REMOTEKILL/) {
		IRC::command("/query -nofocus (client)");
		IRC::print_with_channel($msg,"(client)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* KILL/) {
		IRC::command("/query -nofocus (client)");
		IRC::print_with_channel($msg,"(client)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* DEBUG/) {
		IRC::command("/query -nofocus (debug)");
		IRC::print_with_channel($msg,"(debug)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* REMOTELINK/) {
		IRC::command("/query -nofocus (route)");
		IRC::print_with_channel($msg,"(route)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* LINK/) {
		IRC::command("/query -nofocus (route)");
		IRC::print_with_channel($msg,"(route)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* REMOTEOPER/) {
		IRC::command("/query -nofocus (operstuff)");
		IRC::print_with_channel($msg,"(operstuff)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* OPER/) {
		IRC::command("/query -nofocus (operstuff)");
		IRC::print_with_channel($msg,"(operstuff)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* REMOTEANNOUNCEMENT/) {
		IRC::command("/query -nofocus (operstuff)");
		IRC::print_with_channel($msg,"(operstuff)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* ANNOUNCEMENT/) {
		IRC::command("/query -nofocus (operstuff)");
		IRC::print_with_channel($msg,"(operstuff)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* STATS/) {
		IRC::command("/query -nofocus (operstuff)");
		IRC::print_with_channel($msg,"(operstuff)",$server);
		return 1;
        } elsif($msg =~ /^\*\*\* REMOTEGLOBOPS/) {
		IRC::command("/query -nofocus (globops)");
		IRC::print_with_channel($msg,"(globops)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* GLOBOPS/) {
		IRC::command("/query -nofocus (globops)");
		IRC::print_with_channel($msg,"(globops)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* XLINE/) {
		IRC::command("/query -nofocus (lines)");
		IRC::print_with_channel($msg,"(lines)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* REMOTECHANCREATE/) {
		IRC::command("/query -nofocus (services)");
		IRC::print_with_channel($msg,"(services)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* CHANCREATE/) {
		IRC::command("/query -nofocus (services)");
		IRC::print_with_channel($msg,"(services)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* REMOTENICK/) {
		IRC::command("/query -nofocus (services)");
		IRC::print_with_channel($msg,"(services)",$server);
		return 1;
	} elsif($msg =~ /^\*\*\* NICK/) {
		IRC::command("/query -nofocus (services)");
		IRC::print_with_channel($msg,"(services)",$server);
		return 1;
	}
	return 0;
}

1;
#end
