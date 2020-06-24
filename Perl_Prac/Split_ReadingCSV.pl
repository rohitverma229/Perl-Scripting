#Illustration of a program to split the records of csv file and group them 
#By using Data::Dumper perform same task
use strict;
use warnings;
use Data::Dumper;

$|=1;

sub main
{
    my $input = 'data.csv';
    unless(open(INPUT, $input))
    {
        die "\nCan't open $input\n";
    }
    # Remove header simple
    #<INPUT>;
    #scaning through all the records
    while(my $line = <INPUT>)
    {
        #Taking array for storing the data of csv file and split it with ','
        my @data = split ',', $line;
        #printing the data line by line
        #print $data[0] . "\n";
        print join '|', @data;
        print Dumper(@data);
    }
    close(INPUT);
}

main();