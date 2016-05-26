#!/bin/sh
#  プロジェクトに、必要な初期設定などをします。
#
#
#
#

# HomeBrew
if [ ! -f "/usr/local/bin/brew" ]; then
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# rbenv
if [ ! -f "/usr/local/bin/rbenv" ]; then
  brew update
  brew install rbenv
fi

# fix Ruby Version
rbenv local 2.1.0

# bundler
rbenv exec gem install bundler
rbenv rehash

touch Gemfile

echo "source \"https://rubygems.org\" " >> Gemfile
echo "gem 'fastlane', '1.89.0' " >> Gemfile
echo "gem 'cocoapods', '1.0.0' " >> Gemfile

rbenv exec bundle install --path bundle

# carthage
if [ ! -f "/usr/local/bin/carthage" ]; then
    # carthage install
	brew update
	brew install carthage
fi


touch Cartfile #make Cartfile (like Podfile)
carthage update --platform iOS


#fastlane
rbenv exec bundle exec fastlane init



#cocoapods
rbenv exec bundle exec pod init
rbenv exec bundle exec pod install








#test
rbenv exec bundle exec fastlane test #run test code
