# PerlTutorial
PerlでSeleniumを用いたスクレイピング<br>
Perlの練習として、Googleのトップページからタイトルを取得してみる。（今後機能拡張していく予定）<br>
参考：<br>
      https://www.kent-web.com/perl/chap1.html#chap1_2<br>
      https://qiita.com/jiey@github/items/c85cff47bea8524aef27<br>
## 環境：<br>
  OS：Ubuntu 22.04.3 LTS<br>
  ### ★Seleniumインストール手順：<br>
      $ sudo apt install libexpat1-dev
      $ apt-get update
      $ apt-get install cpanminus
      $ cpanm install Selenium::Remote::Driver
  ### ★ChromeDriverInstall手順：<br>
      $ sudo apt-get update<br>
      $ sudo apt-get install google-chrome-stable
      #ここでChromeのバージョンを確認->私の環境では　version 118.0.5993.117
      #version 118　対応のGoogleDriverを　https://googlechromelabs.github.io/chrome-for-testing/#stable　から探す。
      $ wget https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/｛バージョン｝/linux64/chromedriver-linux64.zip
      $ unzip chromedriver_linux64.zip
      $ sudo mv chromedriver /usr/local/bin/
      $ sudo chmod +x /usr/local/bin/chromedriver
### ★スクリプト実行：<br>
      $./[スクリプト名].pl

      
