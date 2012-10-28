# Work around bug in Debian Squeeze - see https://github.com/mysociety/alaveteli/pull/297#issuecomment-4101012
if File.exist? "/etc/debian_version" and File.open("/etc/debian_version").read.strip =~ /^(squeeze.*|6\.0\.[45])$/
    if File.exist? "/lib/libuuid.so.1"
        require 'dl'
        DL::dlopen('/lib/libuuid.so.1')
    end
end
source :rubygems

gem 'rails'
gem 'pg'

gem 'fast_gettext'
gem 'fastercsv'
gem 'gettext_i18n_rails'
gem 'gettext'
gem 'json'
gem 'mahoro'
gem 'memcache-client', :require => 'memcache'
gem 'locale'
gem 'net-http-local'
gem 'net-purge'
gem 'rack'
gem 'rdoc'
gem 'recaptcha', :require => 'recaptcha/rails'
# :require avoids "already initialized constant" warnings
gem 'rmagick', :require => 'RMagick'
gem 'routing-filter'
gem 'rake'
gem 'rspec'
gem 'rspec-rails'
gem 'ruby-msg'
gem 'test-unit', :platforms => :ruby_19
gem 'vpim'
gem 'will_paginate'
# when 1.2.9 is released by the maintainer, we can stop using this fork:
gem 'xapian-full-alaveteli'
gem 'xml-simple'
gem 'zip'
gem 'capistrano'
gem 'syslog_protocol'
gem 'newrelic_rpm'

group :test do
  gem 'fakeweb'
  gem 'rspec-rails'
end

group :develop do
  gem 'ruby-debug', :platforms => :ruby_18
  gem 'ruby-debug19', :platforms => :ruby_19
  gem 'annotate'
end
