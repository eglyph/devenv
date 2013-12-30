#!/bin/bash

apt-get update && apt-get -y dist-upgrade
apt-get clean && apt-get autoremove

if [ ! -f /root/.bootstrapped ]; then
    # install essential tools
    apt-get install -y build-essential ruby ruby-dev rubygems
    apt-get install -y ipython ipython-notebook p7zip-full
    apt-get install -y git mercurial vim rsync curl netcat mc 
    
    # install Ansible
    add-apt-repository -y ppa:rquillo/ansible
    apt-get -y update
    apt-get install -y ansible

    # install Jekyll and Bundler
    gem install rdoc
    gem install jekyll
    gem install bundler

    # set flag
    touch ~/.bootstrapped
fi


