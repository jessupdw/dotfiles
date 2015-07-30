#!/bin/sh

sudo -v

if test ! $(which apm)
then
  echo "Atom not installed"; exit 1;
fi

# Install apm plugins
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
