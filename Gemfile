source 'http://rubygems.org'

gem 'rails', '3.0.3'

gem 'sqlite3-ruby', :require => 'sqlite3'
gem "rails_admin", :git => 'git://github.com/sferik/rails_admin.git'
gem "haml"
gem "will_paginate", ">=3.0.pre2"
gem "friendly_id", "~>3.0"
gem "devise", ">=1.1.5"
gem "simple_form"
gem "barista", ">= 0.5.0"
gem "compass", ">= 0.10.6"
gem "lemonade", "0.3.4"

group :development do
  gem "hpricot"
  gem "ruby_parser"
  gem "haml_rails"
  gem "autotest"
  gem "autotest-notification"
end

group :development, :test do
  gem "evergreen"
  gem "factory_girl_rails"
  gem "rspec-rails", ">=2.4.1"
  gem "evergreen", :require => "evergreen/rails"
end

group :test do
  gem "rspec", ">=2.4.0"    
  gem 'simplecov', '>= 0.3.8', :require => false
end
