#!/usr/bin/perl

use Selenium::Chrome;

my $driver = Selenium::Chrome->new(
	binary => '/usr/local/bin/chromedriver',
);

print "Type a URL:";
my $url = <STDIN>;
chomp($url);
while (!$url){
	print "URL is empty. Please retry.:";
	$url = <STDIN>;
	chomp($url);
}

$driver->get($url);
print $driver->get_title()."\n";

$driver->shutdown_binary();
