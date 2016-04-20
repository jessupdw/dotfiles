#!/bin/sh

sudo -v

# Install Homebrew

# Check for Homebrew first
if test ! $(which brew)
then
  echo "  Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# update Homebrew
brew doctor
brew update

# Install homebrew packages
# TODO: what are these?
#brew install grc coreutils spark


# Install composer
echo "  Installing Composer"
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install zsh and oh-my-zsh
sh zsh.sh

# Install all homebrew apps
sh homebrew/brew_init.sh

# sublime settings
cp -r config/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text*/Packages/User/Preferences.sublime-settings 2> /dev/null;ok

# Install apm plugins
sh atom.sh

# npm globals
npm install -g bower
npm install -g gulp
npm install -g yo

# show hidden files
defaults write com.apple.finder AppleShowAllFiles TRUE;killall Finder

# leave happy
exit 0
