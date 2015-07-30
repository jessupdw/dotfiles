#!/bin/sh

sudo -v

# update Homebrew
brew doctor

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# get lists of all the taps, recipes and casks
source brewfile

# Setup Homebrew taps
if (( ${#taps[@]} > 0 )); then
    for tap in "${taps[@]}"; do
        brew tap $tap
    done
fi

# Install Homebrew recipes
if (( ${#recipes[@]} > 0 )); then
    for recipe in "${recipes[@]}"; do
        brew install $recipe
    done
fi

# Install Homebrew casks
if (( ${#casks[@]} > 0 )); then
    for cask in "${casks[@]}"; do
        brew cask install --appdir="/Applications" $cask
    done
fi

# Cleanup any unused stuff
brew cleanup

# leave happy
exit 0
