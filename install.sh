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
# We're going to install zsh using Homebrew, so this tells OSX that our Homebrew version is ok to use for the shell
echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells

# now install zsh
brew install zsh

# set zsh as the system shell
chsh -s /usr/local/bin/zsh

# install all homebrew apps
sh homebrew/brew_init.sh

# sublime settings
cp -r config/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text*/Packages/User/Preferences.sublime-settings 2> /dev/null;ok

# install apm plugins
apm install autocomplete-php
apm install editorconfig
apm install git-blame-plus
apm install git-tab-status
apm install linter
apm install linter-csslint
apm install linter-jshint
apm install linter-php
apm install linter-pylint
apm install linter-scss-lint
apm install merge-conflicts
apm install minimap
apm install minimap-find-and-replace
apm install minimap-git-diff
apm install minimap-highlight-selected
apm install pigments
apm install seti-syntax
apm install seti-ui

# leave happy
exit 0
