# iosProjectTemplate[![Build Status](https://www.bitrise.io/app/41d3c87888e97a49.svg?token=OIYvJw2sU29AUQlbUXaecQ&branch=develop)](https://www.bitrise.io/app/41d3c87888e97a49)
iOSのxcodeテンプレート


# 使用ツール

* Xcode
* HomeBrew
* rbenv
* Bitrise

上記インストールしておいてください。
rbenvは、HomeBrewなどでインストールしてください。
Bitriseは、CIなのでお好きなの使ってください。

# ビルド方法
## ローカル環境の初期設定
最初のみ行ってください

1. git clone

  ```Bash
  git clone git@github.com:ppengotsu/iosProjectTemplate.git
  cd iosProjectTemplate // ディレクトリ移動
  ```
  
1. ローカル環境準備

  ```shell.sh
  sh local_init.sh
  
  ```
  
## ローカル環境の更新設定
bundelerでインストールしたものとprovisionfileなどの更新

  ```shell.sh
  sh local_update.sh
  
  ```
### carthageのみ更新

  ```shell.sh
  sh local_update_carthage.sh
  
  ```

### プロビジョンファイルのみ更新
プロビジョンファイルをgitで管理する場合のみ実行

  ```shell.sh
  sh local_update_provisionfile.sh
  
  ```
  


## ローカル：テスト実行

  ```shell.sh
rbenv exec bundle exec fastlane local_test
  
  ```
  
## CI：テスト実行

  ```shell.sh
rbenv exec bundle exec fastlane bitrise_test
  
  ```
  
## ローカル：Deploy実行

  ```shell.sh
rbenv exec bundle exec fastlane local_deploy
  
  ```
  
## CI：Deploy実行

  ```shell.sh
rbenv exec bundle exec fastlane bitrise_deploy
  
  ```

