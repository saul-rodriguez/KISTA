#!/usr/bin/perl

$state = 0;

mkdir("NETLIST");
while(<>) { 
    if ($state == 0) {
	if (/subckt (.*?) .*/) {
	    $name = $1;
	    $state = 1;
	    open(OUT,">NETLIST/$name.scs");
	    push(@names, $name);
            print OUT "// $name\n";
            print OUT "simulator lang=spectre insensitive=yes\n";
            print OUT "global vss vdd\n";
	    print OUT $_;
	}
    }

    elsif($state ==1) { 
        if(/^(.*)\((.*)\)(.*)$/) {
	    my $prefix = $1;
	    my $netlist = $2;
	    my $suffix = $3;

	    $netlist =~ s/vdd!/vdd/g;
	    $netlist =~ s/^0 /vss /g;
	    $netlist =~ s/ 0$/ vss/g;
	    $netlist =~ s/ 0 / vss /g;
	    print OUT "$prefix ($netlist) $suffix\n";
        }
	else { print OUT $_; }

	if (/ends .*/) {
	    $state = 0;
	    close(OUT);
	}
    }
}

for $name (sort(@names)) {
   print $name;
   print " ";
}
print "\n";
