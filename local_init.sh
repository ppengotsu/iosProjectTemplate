#!/bin/sh
# ローカル環境の初期設定

# bundler設定
rbenv exec gem install bundler
rbenv rehash

# ローカル環境更新
sh local_update.sh

sh local_update_carthage.sh



