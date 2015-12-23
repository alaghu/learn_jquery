require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'Home Index ' do
    it 'returns nothing' do
      # This is the action name
      get :index
      # TODO: This is a redundant test.
      # Create one for returning nothing.
      expect(response).to have_http_status(200)
    end
  end
end
