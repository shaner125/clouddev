source 'https://rubygems.org'

#custom built gem for retrieving RSS feeds
gem 'medigem', :git => "git://github.com/shaner125/medigem"
# gem re-introducing observer pattern to ActiveRecord
gem 'rails-observers'
# gem for allowing pagination when patient/patient notes > 30
gem 'will_paginate', '~> 3.1.0'
# gem for generating dummy text
gem 'faker'
# necessary for capybara to run
gem 'puma'
#Testing framework
gem 'rspec-rails', '~> 3.6'
# gem for adding sample data
gem 'factory_bot_rails'
# for testing requests and responses
gem 'rails-controller-testing'
# add support for headless drivers (poltergeist)
gem 'headless'
#gem to simulate user interaction with app
gem 'capybara', '~> 3.15.0'
#adds javascript support for testing
gem 'poltergeist'
# gem to clean database after tests take place
gem 'database_cleaner'
gem 'bootstrap_form'
gem 'devise'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Use postgresql as the database for Active Record
group :development, :test do
gem 'sqlite3', '~> 1.3.6'
end
group :production do
  gem 'pg'
  gem 'rails_12factor'
end
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '~> 3.3.6'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

