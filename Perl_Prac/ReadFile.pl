#Illustration of a program to reading text file and find a specific word

use strict;
use warnings;
$|=1;

sub main
{
    my $file = 'C:\Users\hp\Documents\Programming\Perl_Prac\Text.txt';
    #Opening a text file using $file as INPUT
    #if input is flase then operation will terminate here.
    open(INPUT, $file) or die("Input file $file not found\n");
    while(my $line = <INPUT>) 
    {
        # '=~'tells that if anything matches with / .... /
        #/(i.a)/ find any wild card character.
        # * matches zero or more of the preceding character; e.g.
        # d* matches zero or more d's 7* zero or more 7's, etc.
        # .* matches zero or more of any character, as many as possible
        #.*? matches zero or more of any character, as few as possible
        # basic syntex if($line =~ /(s.*?)/)
        if($line =~ / denoted /) 
        {
            print $line;           
        }
        
    }
    #closing the file
    close(INPUT);
}
#Calling sub routine
main();