# I have purposely hard coded every version. Till there is a specific need
# to update, please ensure you do not >bundle update. Also, uptake one new
# version of a gem after the other. Ofcourse run rspec and rubocop after each
# increment

source 'https://rubygems.org'

# Needed for heroku
ruby '2.2.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'

# Needed for heroku
group :production do
  # resolves issue #3 https://github.com/alaghu/learn_jquery/issues/3
  # Rails_12factor was outputting log in rspec because of rails_12factor I think
  # Therefore, moved it into prod only. Now Rspec is back to clean.
  gem 'rails_12factor', '0.0.3'

  gem 'pg', '0.18.3'
end

group :development, :test do
  # Use mysql as the database for Active Record
  gem 'mysql2', '0.3.18'

  # Call 'byebug' anywhere in the code to stop execution and get a
  # debugger console
  gem 'byebug', '8.1.0'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '2.1.2'

  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring', '1.3.6'
end

group :doc do
  gem 'sdoc', '0.4.1'
end

# Test and maintenance related
gem 'rubocop', '0.34.2'

gem 'bootstrap-sass', '3.3.5.1'

gem 'rspec-rails', '3.3.3'

gem 'capybara', '2.5.0'

# https://coveralls.io/github/alaghu/learn_jquery
gem 'coveralls', '0.8.3', require: false

# CSS and Javascript related

# Use SCSS for stylesheets
gem 'sass-rails', '5.0.3'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '2.7.1'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '4.1.0'

# Use jquery as the JavaScript library
gem 'jquery-rails', '4.0.5'

# Turbolinks makes following links in your web application faster. R
# ead more: https://github.com/rails/turbolinks
gem 'turbolinks', '2.5.3'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.2.16'
