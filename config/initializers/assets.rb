# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder
# are already added.

# A's adding this due to controller specific stylesheet.
# http://theflyingdeveloper.com/controller-specific-assets-with-rails-4/

#                                            %w is an array with space as de
# limiter
Rails.application.config.assets.precompile += %w(
  home_index.css
  home_index.js
  book_intro.css
  book_intro.js
  book_selector.css
  book_selector.js
  select_me.css
  select_me.js
  routing_errors_page_not_found.css
  routing_errors_page_not_found.js
  routing_errors_internal_server_error.css
  routing_errors_internal_server_error.js
)
