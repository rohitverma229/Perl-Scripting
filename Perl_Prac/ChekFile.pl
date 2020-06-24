#Illustration of a program to find whether file is exists in directory using array

use strict;
use warnings;

$|=1; #forces a flush after every write or print, so the output appears as soon as it's generated rather than being buffered

sub main
{
    #Array variable
    my @file = (
        'C:\Users\hp\Documents\Programming\Perl_Prac\logo.png',
        'C:\Users\hp\Documents\Programming\Perl_Prac\home.html',
        'C:\Users\hp\Documents\Programming\Perl_Prac\missing.png',
    );
    #scaning through all paths in an Arrays
    foreach my $scan(@file)
    {
    #print "$file\n";
    # -f tells if file is exist or not
        if(-f $scan)
        {
            print "File found at: $file location\n";
        }
        else
        {
            print "file not found at: $file location\n";
        }
    }
}

main();