# PerlTutorial
PerlでSeleniumを用いたスクレイピング<br>
Perlの練習として、Seleniumを使用したWeb操作をしてみる。（少しづつ機能更新・スクリプト追加）<br>
段階１　https://www.google.co.jp/ のタイトルを所得成功、しかし検索BOX入力に失敗 <br>
段階２　Seleniumサーバをインストール、使用ブラウザをFireFoxにすることで、検索に成功 <br>

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
### ★修正：<br>
      #Seleniumサーバをインストール・起動して実行するように変更
      #Seleniumサーバをインストール
        https://www.selenium.dev/downloads/
      #Seleniumサーバ起動
      $ java -jar selenium-server-4.14.1.jar standalone
### ★Googleで"perl tutorial"を検索し結果を表示
      NewTest.plを実行
            $ ./NewTest.pl
### ★目標
      google検索ー＞ウェブサイト巡回ー＞スクリーンショット撮影・保存


      
### ★スクリプト実行：<br>
      $./[スクリプト名].pl
      
