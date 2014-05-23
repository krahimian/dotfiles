#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")"

rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
    --exclude "README.md" --exclude "LICENSE-MIT.txt" -avh --no-perms . ~
source ~/.bash_profile

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew bundle ~/init/Caskfile
brew bundle ~/init/Brewfile

launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.elasticsearch.plist
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist

bash < <(curl -s https://rvm.beginrescueend.com/install/rvm)
if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi
rvm get head
rvm reload
rvm install 2.1.0
rvm use 2.1.0 --default

gem install bundler
bundle install

npm install -g bower
npm install -g gulp
npm install -g component
npm install -g yo
npm install -g grunt-cli
npm install -g grunt-init
npm install -g nodemon
npm install -g cordova

pip install --upgrade pip
pip install --upgrade setuptools
pip install awscli --upgrade
pip install django
sudo pip install carbon
pip install whisper
pip install django-tagging
sudo pip install graphite-web
