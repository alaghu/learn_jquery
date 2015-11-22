require 'rails_helper'

RSpec.describe RoutingErrorsController, type: :controller do
  describe 'GET #page_not_found' do
    it 'returns http missing, 404' do
      # This is the action name
      get :page_not_found

      expect(response).to have_http_status(:missing)
    end
  end

  describe 'GET #internal_server_error' do
    it 'returns http error, 500' do
      # This is the action name
      get :internal_server_error

      expect(response).to have_http_status(:error)
    end
  end
end
