#!/usr/bin/perl
use Selenium::Remote::Driver;
use strict;
use warnings;
use Time::HiRes qw(sleep);

#Selenium WebDriverの設定
my $driver = Selenium::Remote::Driver->new(
	host => 'localhost',
	port => '4444',
	browser_name => 'chrome',
);

$driver->get('https://www.google.com');

my $search_box = $driver->find_element('q', 'name');

$driver->wait_for_element_present('search', 'id', 10);

$search_box->send_keys('Perl Selenium Google Search');

my $search_button = $driver->find_element('btnK', 'name');
$search_button->click;

$driver->wait_for_element_present('search', 'id', 10);
sleep(2);

$driver->capture_screenshot('google_search_result.png');

$driver->quit;

