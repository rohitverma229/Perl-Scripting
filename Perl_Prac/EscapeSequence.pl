#Illustration of a program to understand the functionality of Escape Sequences in perl
use strict;
use warnings;

sub main
{
    # \d digit
    # \s space
    # \S non-space
    # \w alpha numeric
    my $text = "The quick brown fox jumps over the lazy dog";
    my $text2 = "im 117 year old tomorrow";
    if($text2 =~ / (\d+) /)
    {
        #The $1 variables contain the parts of the string that matched the capture groups ( ... ) 
        #in the pattern for your last regex match if the match was successful.
        print "Matched: '$1'\n";
    }

    
}

main();