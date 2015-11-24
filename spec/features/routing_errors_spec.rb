require 'rails_helper'

# Inspired from http://thepugautomatic.com/2014/08/404-with-rails-4/
# #comment-1533814760
describe 'Error pages ' do
  # Setting up these config variables before the test
  before(:all) do
    # From http://guides.rubyonrails.org/configuring.html#configuring-middleware
    # ActionDispatch::ShowExceptions rescues any exception returned by
    # the application and renders nice exception pages if the request is
    # local or
    # if config.consider_all_requests_local is set to true.
    # If config.action_dispatch.show_exceptions is set to false,
    # exceptions will be raised regardless.
    Rails.application.config.action_dispatch.show_exceptions = true
    Rails.application.config.consider_all_requests_local = false
  end

  # Resetting the variables back. However, not sure if these are the default
  # values.
  after(:all) do
    #  These are thde default values in config/environments/test.rb
    Rails.application.config.action_dispatch.show_exceptions = false
    Rails.application.config.consider_all_requests_local = true
  end

  it 'should display my 404 page' do
    visit '/404'

    expect(page).to have_content 'My 404'
  end

  it 'should display my 500 page' do
    visit '/500'

    expect(page).to have_content 'My 500!'
  end

  it 'should display my 422 page' do
    visit '/422'

    expect(page).to have_content 'My 422!'
  end
end
