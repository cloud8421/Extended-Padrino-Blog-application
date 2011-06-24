source :rubygems

# Server requirements
# gem 'thin' or mongrel

# Project requirements
gem 'rake', "0.8.7"
gem 'rack-flash'

# Component requirements
gem 'bcrypt-ruby', :require => "bcrypt"
gem 'sass'
gem 'erubis', "~> 2.7.0"
gem 'dm-sqlite-adapter'
gem 'data_mapper'
gem 'rspec'

# Test requirements
group :test do
  gem 'rack-test', :require => "rack/test"
  gem 'spork', '~> 0.9.0.rc'
  gem 'webrat'
  gem 'syntax'
  gem 'factory_girl'
  gem 'guard'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'rb-fsevent' #only for OS X
  gem 'growl' #optional
end

#Production
group :production do
  gem 'pg'
  gem 'dm-postgres-adapter'
end

# Padrino
gem 'padrino', "0.9.29"
# Padrino EDGE
# gem 'padrino', :git => "git://github.com/padrino/padrino-framework.git"