source 'https://rubygems.org'

ruby '2.1.4'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'

# Use SCSS for stylesheets
gem 'sass-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
gem 'bcrypt'
gem 'spank'
gem 'bootstrap-sass'
gem 'pg'
gem 'ember-rails', github: 'emberjs/ember-rails'
gem 'ember-source'
gem 'rack-ssl-enforcer'
gem 'puma'
gem 'email_validator'
gem "rack-timeout"
gem 'title'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development
group :development do
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'pry-rails'
  gem 'byebug'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'ffaker'
  gem 'foreman'
  gem 'quiet_assets'
  gem 'dotenv-rails'
  gem 'i18n-tasks'
  gem "codeclimate-test-reporter", require: nil
  gem 'capybara'
end
group :staging, :production do
  gem 'rails_12factor'
  gem 'dalli'
end
