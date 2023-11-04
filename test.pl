#!/usr/bin/perl

use Selenium::Remote::Driver;
use strict;
use warnings;

# Seleniumサーバーへの接続情報
my $driver = Selenium::Remote::Driver->new(
    remote_server_addr => 'http://http://192.168.11.39:4444',  # Seleniumサーバーのアドレスとポート
    browser_name      => 'chrome',                       # 使用するブラウザを指定
);

# Googleのホームページを開く
$driver->get('https://www.google.com');

# 検索ボックスにキーワードを入力
my $search_box = $driver->find_element('q', 'name');
$search_box->send_keys('Perl Selenium Google Search');

# 検索ボタンをクリック
my $search_button = $driver->find_element('btnK', 'name');
$search_button->click;

# 検索結果を待つ（10秒間待つ）
$driver->wait_for_element_present('search', 'id', 10);

# スクリーンショットを保存
$driver->capture_screenshot('google_search_result.png');

# ドライバーを終了
$driver->quit;

