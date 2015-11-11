source 'https://rubygems.org'

# Needed for heroku
ruby '2.2.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'

# Needed for heroku
# resolves issue #3 https://github.com/alaghu/learn_jquery/issues/3
# Rails_12factor was outputting log in rspec because of rails_12factor I think
# Therefore, moved it into prod only. Now Rspec is back to clearn.
group :production do
  gem 'rails_12factor'
  gem 'pg'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. R
# ead more: https://github.com/rails/turbolinks
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

  # Use mysql as the database for Active Record
  gem 'mysql2'

  # Call 'byebug' anywhere in the code to stop execution and get a
  # debugger console
  # gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring'
end

gem 'rubocop'

gem 'bootstrap-sass', '~> 3.3.5'

gem 'rspec-rails', '~>3.0'

gem 'capybara'

# https://coveralls.io/github/alaghu/learn_jquery
gem 'coveralls', require: false

