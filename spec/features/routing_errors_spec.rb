require 'rails_helper'

# Inspired from http://thepugautomatic.com/2014/08/404-with-rails-4/
# #comment-1533814760
describe 'Error pages ' do

  before(:all) do
    Rails.application.config.action_dispatch.show_exceptions = true
    Rails.application.config.consider_all_requests_local = false
  end

  after(:all) do
    Rails.application.config.action_dispatch.show_exceptions = false
    Rails.application.config.consider_all_requests_local = true
  end


  it 'should display my 404 page' do
    visit '/give-me-my-404'

    expect(page).to have_content 'My 404'
  end
end
