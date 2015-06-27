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

# install on-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# copy zshrc settings
cp -r config/_.zshrc ~/.zshrc 2> /dev/null;ok

# install powerline fonts
pip install --user powerline-status

# install all homebrew apps
sh homebrew/brew_init.sh

# sublime settings
cp -r config/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text*/Packages/User/Preferences.sublime-settings 2> /dev/null;ok

# install apm plugins
apm install atom-ctags
apm install autocomplete-php
apm install editorconfig
apm install git-blame-plus
apm install git-control
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
apm install symbols-tree-view

# npm globals
npm install -g bower
npm install -g gulp
npm install -g yo

# leave happy
exit 0
