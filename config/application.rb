require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# adding this comment for rubocop.
module LearnJquery
  # adding this comment for rubocop.
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified
    # here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record
    # auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names.
    # Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from
    # config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path +=
    # Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    # From https://mattbrictson.com/dynamic-rails-error-
    # pages#1-generate-an-errors-controller-and-views
    #
    # This tells Rails to serve error pages from the Rails app itself
    # (i.e. the routes we just set up),
    # rather than using static error pages in public/.
    # Further , I was curios how the default excpetions are directed to the
    # static 404 page. You can see it  here /gems/actionpack-4.2.1/lib/action_dispatch/middleware/public_exceptions.rb
    config.exceptions_app = self.routes
  end
end
