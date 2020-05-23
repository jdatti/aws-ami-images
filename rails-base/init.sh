#!/bin/bash
set -e

sudo apt update -y
sudo apt install -y gnupg2 libpq-dev
sudo apt install -y libmagickwand-dev imagemagick

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt install -y nodejs yarn

sudo apt install -y nginx
