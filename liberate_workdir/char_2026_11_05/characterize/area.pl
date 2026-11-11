#!/usr/bin/perl

open(OUT,">LIBRARY/userdata.lib");
print OUT "library(userdata) {\n";

while(<>) {
    chomp;

    if (/(.*?)\s+(.*)/) {
	$cell = $1;
	$area = $2;
	$cell =~ tr/a-z/A-Z/;

	
	print OUT<<EOD
cell ($cell) {
    area : $area;
    cell_footprint : $cell;
}

EOD
    }
}


print OUT "}\n";
close(OUT);    
