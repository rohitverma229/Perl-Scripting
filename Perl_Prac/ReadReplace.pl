#Illustration of a program to read the text file and replacing the text.

use strict;
use warnings;
$|=1;

sub main
{
    my $input = 'C:\Users\hp\Documents\Programming\Perl_Prac\Text.txt';
    #Opening a text file using $file as INPUT
    #if input is flase then operation will terminate here.
    open(INPUT, $input) or die("Input file $input not found\n");

    my $output = 'output.txt';
    # '>'. force to create file and concatinate with output.txt. without '>' file won't be created
    open(OUTPUT, '>'.$output) or die("Can't create $output\n");
    while(my $line = <INPUT>) 
    {
        # '=~'tells that if anything matches with / .... /
        # \b is the word boundry if any speceial character encounter it will also read that.
        if($line =~ /\bdenoted\b/)
        {
            #Replacing word 'denoted' with DENOTED
            # 's' tells perl replace following text from opening slash s/
            # 'ig' tells that i=case senstive g=global    
            $line =~ s/denoted/DENOTED/ig; 
            #Writing the result of $line in output.txt file 
            print OUTPUT $line;           
        }      
    }
    #closing the file
    close(INPUT);
    close(OUTPUT);
}

main();