#!/usr/bin/env bash

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew bundle ~/init/Caskfile
brew bundle ~/init/Brewfile

ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist

ln -sfv /usr/local/opt/elasticsearch/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.elasticsearch.plist

ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist

ln -sfv /usr/local/opt/memcached/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist

ln -sfv /usr/local/opt/couchdb/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.couchdb.plist

gem install bundler
bundle install

vagrant plugin install vagrant-hostsupdater
vagrant plugin install vagrant-triggers

npm install -g bower
npm install -g gulp
npm install -g component
npm install -g yo
npm install -g grunt-cli
npm install -g grunt-init
npm install -g nodemon
npm install -g cordova
npm install -g ionic
npm install -g ios-sim
npm install -g hubot
npm install -g coffee-script

pip install --upgrade --no-use-wheel pip
pip install --upgrade --no-use-wheel setuptools
pip install awscli --upgrade
pip install django
sudo pip install carbon
pip install whisper
pip install django-tagging
sudo pip install graphite-web
