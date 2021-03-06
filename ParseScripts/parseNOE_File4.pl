#!/usr/bin/perl -w

#usage: ./parseNOEFile4.pl noeFilename

#given an NOE file, simply extracts the indices of the residues which have an NOE between them as well as their lower and upperbound distances from nih-explor formatted lines.

$noeFilename           = shift;

open (FIN_NOE, $noeFilename) || die("couldn't open $noeFilename");

while ($line = <FIN_NOE>)
{
#    if (($line =~ /resid\s+(\d+).+HN.+resid\s+(\d+).+HN/))
    if (($line =~ /resid\s+(\d+).+HN.+resid\s+(\d+).+HN.+(\d+\.\d+)\s+\d+\.\d+\s+(\d+\.\d+)/))
    {
	$aa1Index  = $1;
	$aa2Index  = $2;
	$lowerBoundDistance = $3;
	$upperBoundDistance = $4 + $3;
	print STDOUT $aa1Index." ".$aa2Index." ".$lowerBoundDistance." ".$upperBoundDistance."\n";
    }
#    elsif ($line =~ /resid\s+(\d+).+HA.+resid\s+(\d+).+HN.+(\d+\.\d+)\s+\d+\.\d+\s+(\d+\.\d+)/) 
#    {
#	$aa1Index  = $1;
#	$aa2Index  = $2;
#	$lowerBoundDistance = $3;
#	$upperBoundDistance = $4 + $3;
#	print STDOUT $aa1Index." ".$aa2Index." ".$lowerBoundDistance." ".$upperBoundDistance."\n";
#    }
#    elsif ($line =~ /resid\s+(\d+).+HN.+resid\s+(\d+).+HA.+(\d+\.\d+)\s+\d+\.\d+\s+(\d+\.\d+)/) 
#    {
#	$aa1Index  = $1;
#	$aa2Index  = $2;
#	$lowerBoundDistance = $3;
#	$upperBoundDistance = $4 + $3;
#	print STDOUT $aa1Index." ".$aa2Index." ".$lowerBoundDistance." ".$upperBoundDistance."\n";
#    }
#    elsif ($line =~ /resid\s+(\d+).+HA.+resid\s+(\d+).+HA.+(\d+\.\d+)\s+\d+\.\d+\s+(\d+\.\d+)/)
#    {
#	$aa1Index  = $1;
#	$aa2Index  = $2;
#	$lowerBoundDistance = $3;
#	$upperBoundDistance = $4 + $3;
#	print STDOUT $aa1Index." ".$aa2Index." ".$lowerBoundDistance." ".$upperBoundDistance."\n";
#    }
#    else
#    {
#	printf STDERR "$line\n";# does not match the format\n";
#    }
}


