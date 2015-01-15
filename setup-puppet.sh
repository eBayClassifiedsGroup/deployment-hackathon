#!/bin/bash

TEMP=/tmp
BASEDIR=vagrant

pushd $TEMP &>/dev/null
wget http://downloads.puppetlabs.com/mac/facter-2.3.0.dmg
wget http://downloads.puppetlabs.com/mac/hiera-1.3.4.dmg
wget http://downloads.puppetlabs.com/mac/puppet-3.7.3.dmg

open facter-2.3.0.dmg
open hiera-1.3.4.dmg
open puppet-3.7.3.dmg

popd &>/dev/null

pushd $BASEDIR &>/dev/null

mkdir manifests modules

touch manifests/default.pp

puppet module install puppetlabs-apt  --modulepath modules

popd &>/dev/null
