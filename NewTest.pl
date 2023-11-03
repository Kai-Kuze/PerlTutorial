#!/usr/bin/perl
use Selenium::Remote::Driver;
use strict;
use warnings;
use Time::HiRes qw(sleep);

# Selenium WebDriverの設定
my $driver = Selenium::Remote::Driver->new(
    host         => 'localhost',
    port         => '4444',
    browserName => 'chrome',
    chromeOptions => {
        args => ['--disable-infobars']  # Chromeの情報バーを無効化
    }
);

$driver->get('https://www.google.com');

my $search_box = $driver->find_element('q', 'name');
$search_box->send_keys('Perl Tutorial');

my $search_button = $driver->find_element('btnK', 'name');

# 修正: 検索ボタンの待機
while (!$search_button->is_displayed) {
    sleep(1);  # 1秒待機
}

# 修正: 要素が表示される位置までスクロール
$driver->execute_script('arguments[0].scrollIntoView(true);', $search_button);

sleep(2);

$search_button->click;

$driver->wait_for_element_present('search', 'id', 10);
sleep(5);

$driver->capture_screenshot('google_search_result.png');

$driver->quit;

