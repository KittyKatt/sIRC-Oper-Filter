##########################################
##    IRCop Filter Script for HexChat   ##
##                                      ##
##          (c)2010 KittyKatt           ##
##########################################
##           Revision 1 (v2.0)          ##
##                                      ##
##     -Consolidated all notices        ##
##      back into (snotices) tab.       ##
##     -Color coded sections of         ##
##      notices for better reading.     ##
##                                      ##
##########################################
##           Revision 2 (v3.0)          ##
##                                      ##
##     -Complete rewrite.               ##
##     -Coded so that status code       ##
##      appaers left of tab margin      ##
##      and message appears at right.   ##
##                                      ##
##           Revision (v3.1)            ##
##                                      ##
##     -Changed "Announcement" into     ##
##      "Announce" and all "Remote*"    ##
##      into "*(R)"                     ##
##                                      ##
##           Revision (v3.2)            ##
##     -Changed XChat to HexChat        ##
##     -Removed 'SilverIRC' from        ##
##      description                     ##
##     -Removed some whitespace from    ##
##      the notices
##########################################

$SCRIPTNAME = "Oper-Filter";
$VERSION = "3.2";
$DESCRIPTION = "IRCop Script to filter the snotices tab";

HexChat::register($SCRIPTNAME,$VERSION,$DESCRIPTION);
HexChat::hook_print("Server Notice", \&filter_snotice); # Hooks on all Server Notices

sub filter_snotice {
	my $line = $_[0][0];
	my $servername = HexChat::get_info("server");
	if ($line =~ m/REMOTECONNECT/) {
		$line =~ s/^\*\*\* REMOTECONNECT: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC18Connect (R)\cC30]", $line);
		return 1;
	} elsif ($line =~ m/CONNECT/) {
		$line =~ s/^\*\*\* CONNECT: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC18Connect\cC30]", $line);
		return 1;
	} elsif ($line =~ m/REMOTEQUIT/) {
		$line =~ s/^\*\*\* REMOTEQUIT: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC29Disconnect (R)\cC30]", $line);
		return 1;
	} elsif ($line =~ m/QUIT/) {
		$line =~ s/^\*\*\* QUIT: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC29Disconnect\cC30]", $line);
		return 1;
	} elsif ($line =~ m/REMOTEKILL/) {
		$line =~ s/^\*\*\* REMOTEKILL: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC18Kill (R)\cC30]", $line);
		return 1;
	} elsif ($line =~ m/KILL/) {
		$line =~ s/^\*\*\* KILL: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC18Kill\cC30]", $line);
		return 1;
	} elsif ($line =~ m/DEBUG/) {
		$line =~ s/^\*\*\* DEBUG: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC20Debug\cC30]", $line);
		return 1;
	} elsif ($line =~ m/REMOTELINK/) {
		$line =~ s/^\*\*\* REMOTELINK: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC19Link (R)\cC30]", $line);
		return 1;
	} elsif ($line =~ m/LINK/) {
		$line =~ s/^\*\*\* LINK: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC19Link\cC30]", $line);
		return 1;
	} elsif ($line =~ m/REMOTEOPER/) {
		$line =~ s/^\*\*\* REMOTEOPER: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC19Oper (R)\cC30]", $line);
		return 1;
	} elsif ($line =~ m/OPER/) {
		$line =~ s/^\*\*\* OPER: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC19Oper\cC30]", $line);
		return 1;
	} elsif ($line =~ m/REMOTEANNOUNCEMENT/) {
		$line =~ s/^\*\*\* REMOTEANNOUNCEMENT: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC20Announce (R)", $line);
		return 1;
	} elsif ($line =~ m/ANNOUNCEMENT/) {
		$line =~ s/^\*\*\* ANNOUNCEMENT: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC20Announce\cC30]", $line);
		return 1;
	} elsif ($line =~ m/STATS/) {
		$line =~ s/^\*\*\* STATS: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC20Stats\cC30]", $line);
		return 1;
	} elsif ($line =~ m/REMOTEGLOBOPS/) {
		$line =~ s/^\*\*\* REMOTEGLOBOPS: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC23Global OPs\cC30]", $line);
		return 1;
	} elsif ($line =~ m/GLOBOPS/) {
		$line =~ s/^\*\*\* GLOBOPS: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC23Global OPs\cC30]", $line);
		return 1;
	} elsif ($line =~ m/REMOTECHANCREATE/) {
		$line =~ s/^\*\*\* REMOTECHANCREATE: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC27Channel Creation\cC30]", $line);
		return 1;
	} elsif ($line =~ m/CHANCREATE/) {
		$line =~ s/^\*\*\* CHANCREATE: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC27Channel Creation\cC30]", $line);
		return 1;
	} elsif ($line =~ m/REMOTENICK/) {
		$line =~ s/^\*\*\* REMOTENICK: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC27Nick Change\cC30]", $line);
		return 1;
	} elsif ($line =~ m/NICK/) {
		$line =~ s/^\*\*\* NICK: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC27Nick Change\cC30]", $line);
		return 1;
	} elsif ($line =~ m/XLINE/) {
		$line =~ s/^\*\*\* XLINE: //;
		HexChat::emit_print('Generic Message', "\cB\cC30[\cC20X:Line\cC30]", $line);
		return 1;
	}
	return 0;
}

HexChat::print("\cB\cC26$SCRIPTNAME $VERSION Successfully Loaded.\cO\n");
