##########################################
##         IRCop Filter Script          ##
##              for XChat               ##
##                                      ##
##           Created for the            ##
##            SilverIRC OPs             ##
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
##########################################

$SCRIPTNAME = "SilverIRC Oper-Filter";
$VERSION = "3.1";
 
Xchat::register($SCRIPTNAME,$VERSION,"SilverIRC IRCop Script to filter the (snotices) tab.",);
Xchat::hook_print("Server Notice", \&filter_snotice); # Hooks on all Server Notices

sub filter_snotice {
	my $line = $_[0][0];
	my $servername = Xchat::get_info("server");
	if ($line =~ m/REMOTECONNECT/) {
		$line =~ s/^\*\*\* REMOTECONNECT: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC18 Connect (R) \cC30]\cC18:\cC30", $line);
		return 1;
	} elsif ($line =~ m/CONNECT/) {
		$line =~ s/^\*\*\* CONNECT: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC18 Connect \cC30]\cC18:\cC30", $line);
		return 1;
	} elsif ($line =~ m/REMOTEQUIT/) {
		$line =~ s/^\*\*\* REMOTEQUIT: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC29 Disconnect (R) \cC30]\cC29:\cC30", $line);
		return 1;
	} elsif ($line =~ m/QUIT/) {
		$line =~ s/^\*\*\* QUIT: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC29 Disconnect \cC30]\cC29:\cC30", $line);
		return 1;
	} elsif ($line =~ m/REMOTEKILL/) {
		$line =~ s/^\*\*\* REMOTEKILL: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC18 Kill (R) \cC30]\cC18:\cC30", $line);
		return 1;
	} elsif ($line =~ m/KILL/) {
		$line =~ s/^\*\*\* KILL: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC18 Kill \cC30]\cC18:\cC30", $line);
		return 1;
	} elsif ($line =~ m/DEBUG/) {
		$line =~ s/^\*\*\* DEBUG: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC20 Debug \cC30]\cC20:\cC30", $line);
		return 1;
	} elsif ($line =~ m/REMOTELINK/) {
		$line =~ s/^\*\*\* REMOTELINK: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC19 Link (R) \cC30]\cC19:\cC30", $line);
		return 1;
	} elsif ($line =~ m/LINK/) {
		$line =~ s/^\*\*\* LINK: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC19 Link \cC30]\cC19:\cC30", $line);
		return 1;
	} elsif ($line =~ m/REMOTEOPER/) {
		$line =~ s/^\*\*\* REMOTEOPER: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC19 Oper (R) \cC30]\cC19:\cC30", $line);
		return 1;
	} elsif ($line =~ m/OPER/) {
		$line =~ s/^\*\*\* OPER: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC19 Oper \cC30]\cC19:\cC30", $line);
		return 1;
	} elsif ($line =~ m/REMOTEANNOUNCEMENT/) {
		$line =~ s/^\*\*\* REMOTEANNOUNCEMENT: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC20 Announce (R) \cC30]\cC20:\cC30", $line);
		return 1;
	} elsif ($line =~ m/ANNOUNCEMENT/) {
		$line =~ s/^\*\*\* ANNOUNCEMENT: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC20 Announce \cC30]\cC20:\cC30", $line);
		return 1;
	} elsif ($line =~ m/REMOTELINK/) {
		$line =~ s/^\*\*\* REMOTELINK: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC19 Link (R) \cC30]\cC19:\cC30", $line);
		return 1;
	} elsif ($line =~ m/REMOTELINK/) {
		$line =~ s/^\*\*\* REMOTELINK: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC19 Link (R) \cC30]\cC19:\cC30", $line);
		return 1;
	} elsif ($line =~ m/STATS/) {
		$line =~ s/^\*\*\* STATS: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC20 Stats \cC30]\cC20:\cC30", $line);
		return 1;
	} elsif ($line =~ m/REMOTEGLOBOPS/) {
		$line =~ s/^\*\*\* REMOTEGLOBOPS: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC23 Global OPs \cC30]\cC23:\cC30", $line);
		return 1;
	} elsif ($line =~ m/GLOBOPS/) {
		$line =~ s/^\*\*\* GLOBOPS: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC23 Global OPs \cC30]\cC23:\cC30", $line);
		return 1;
	} elsif ($line =~ m/REMOTECHANCREATE/) {
		$line =~ s/^\*\*\* REMOTECHANCREATE: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC27 Channel Creation \cC30]\cC27:\cC30", $line);
		return 1;
	} elsif ($line =~ m/CHANCREATE/) {
		$line =~ s/^\*\*\* CHANCREATE: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC27 Channel Creation \cC30]\cC27:\cC30", $line);
		return 1;
	} elsif ($line =~ m/REMOTENICK/) {
		$line =~ s/^\*\*\* REMOTENICK: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC27 Nick Change \cC30]\cC27:\cC30", $line);
		return 1;
	} elsif ($line =~ m/NICK/) {
		$line =~ s/^\*\*\* NICK: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC27 Nick Change \cC30]\cC27:\cC30", $line);
		return 1;
	} elsif ($line =~ m/XLINE/) {
		$line =~ s/^\*\*\* XLINE: //;
		Xchat::emit_print('Generic Message', "\cB\cC30[\cC20 X:Line \cC30]\cC20:\cC30", $line);
		return 1;
	}
	return 0;
}

Xchat::print("\cB\cC26$SCRIPTNAME $VERSION Successfully Loaded.\cO\n");
