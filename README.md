# Welcome to Alaveteli!

[![Build Status](https://secure.travis-ci.org/mysociety/alaveteli.png)](http://travis-ci.org/mysociety/alaveteli) [![Dependency Status](https://gemnasium.com/mysociety/alaveteli.png)](https://gemnasium.com/mysociety/alaveteli)

This is an open source project to create a standard, internationalised
platform for making Freedom of Information (FOI) requests in different
countries around the world. The software started off life as
[WhatDoTheyKnow](http://www.whatdotheyknow.com), a website produced by
[mySociety](http://mysociety.org) for making FOI requests in the UK.

We hope that by joining forces between teams across the world, we can
all work together on producing the best possible software, and help
move towards a world where governments approach transparency as the
norm, rather than the exception.

Please join our mailing list at
https://groups.google.com/group/alaveteli-dev and introduce yourself.

Some documentation can be found in the
[`doc/` folder](https://github.com/mysociety/alaveteli/tree/master/doc).
There's background information and a more documentation on
[our wiki](https://github.com/mysociety/alaveteli/wiki/Home/), and lots
of useful information (including a blog) on
[the project website](http://alaveteli.org)

Looking for the latest stable release? It's on the 
[master branch](https://github.com/mysociety/alaveteli/tree/master).

# install 

  get sources  
      git clone git@github.com:flosskosova/alaveteli.git
      cd alaveteli/

  pull the latest code :
        git remote add original git://github.com/mysociety/alaveteli.git
  	git pull orginal master
  	git pull original develop
  
  update the submodules :
  	git submodule update --init


  get rvm :
       git clone git@github.com:h4ck3rm1k3/rvm.git
       cd rvm/
       ./install 
       source /home/mdupont/.rvm/scripts/rvm
       sudo  /usr/bin/apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion pkg-config
       rvm install 1.9.2

  setup :
    cd ../alaveteli/
    gem install bundler
    bundle install

  setup the database :
    sudo apt-get install postgresql-8.4
    create the file alaveteli/config/database.yml from alaveteli/config/database.yml-example, change the password
    edit /etc/postgresql/8.4/main/pg_hba.conf like http://www.germanxml.de/install/postgres/files/pg_hba.conf.html
    restart the server
     
    sudo su postgres
    createuser mdupont (my user name,use yours)
    createdb foi_development
    
    install memcached
   
  setup the app :
    create config/newrelic.yml from config/newrelic.yml-example
    create config/general.yml from config/general.yml-example

   run : rake
   run : rake db:migrate