#!/bin/sh

echo 'Downloading nvm (node version manager)...'
git clone git://github.com/creationix/nvm.git ~/.nvm

echo 'Installing nvm...'
echo '. ~/.nvm/nvm.sh' >> ~/.bash_profile
echo '[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion' >> ~/.bash_profile

source ~/.bash_profile

echo 'Installing node.js...'
nvm install v0.6.18
nvm alias default v0.6.18

echo 'Installing coffeescript...'
npm install -g coffee-script

echo 'Done'
exit 0