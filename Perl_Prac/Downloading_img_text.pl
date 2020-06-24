#Illustration of a program to download text and images from website.

use strict;
use warnings;
use LWP::Simple;

sub main
{
    print "Downloading...\n";
    # print get("https://www.caveofprogramming.com/");
    # getstore("https://www.caveofprogramming.com/","home.html");
    my $code = getstore('https://www.caveofprogramming.com/images/spring-course.jpg',"logo.png");
    #code 200 is the successful when we download html pictures.
    if($code == 200)
    {
        print "Success\n";
    }
    else
    {
        print "Failed\n";
    }
    print "Finished";
}

main();