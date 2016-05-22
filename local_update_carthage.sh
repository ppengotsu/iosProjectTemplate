#!/bin/sh

# carthage
if [ ! -f "/usr/local/bin/brew" ]; then
    echo "Cannot find brew at /usr/local/bin/brew"
    exit 1
fi

if [ ! -f "/usr/local/bin/carthage" ]; then
      # carthageのインストール
	brew update
	brew install carthage
	brew info carthage 
else
     # carthage更新
	#brew update
	brew upgrade carthage
    	#brew info carthage 
fi