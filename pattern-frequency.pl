#!/usr/local/bin/perl
# Mike McQuade
# pattern-frequency.pl
# Takes in a string and a pattern from an input file,
# then outputs the number of times the pattern appears.

use strict;
use warnings;

# Define local variables
my ($text,$pattern);
my $count = 0;

# Open the file to read
open(my $fh,"<ba1a.txt") or die $!;

# Initialize text and pattern variables with their respective strings
$text = <$fh>;
$pattern = <$fh>;
chomp($text);
chomp($pattern);

# Iterate through the text string
for (my $i = 0; $i <= (length($text)-length($pattern)); $i++){
	# If the pattern is found in the string, add one to count
	if (substr($text,$i,length($pattern)) eq $pattern) {
		$count++;
	}
}

# Close the file
close($fh) || die "Couldn't close file properly";

# Print count
print $count;