#!/bin/sh

sudo -v

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
