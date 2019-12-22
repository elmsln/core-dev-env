#!/bin/sh
# WCFactory dependencies
yarn global add @wcfactory/cli
yarn global add polymer-cli
yarn global add lerna
yarn global add web-component-analyzer
# establish WCFactory so we can get this party started
cd ~
mkdir company
cd company
# You'll have answer prompts here
wcf start
# we dont have this directory yet but might for structure at some point
mkdir applications
# move to factories and clone lrn
cd factories
git clone git@github.com:elmsln/lrnwebcomponents.git
cd lrnwebcomponents
yarn install
cd ../../applications
git clone git@github.com:elmsln/haxcms.git
git clone git@github.com:elmsln/elmsln.git
git clone git@github.com:elmsln/hax-all-the-things.git
cd haxcms
ln -s ~/company/factories/lrnwebcomponents/node_modules/ node_modules