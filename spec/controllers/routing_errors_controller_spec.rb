require 'rails_helper'

RSpec.describe RoutingErrorsController, type: :controller do

  describe "GET #page_not_found" do
    it "returns http success" do
      get :page_not_found
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #internal_server_error" do
    it "returns http success" do
      get :internal_server_error
      expect(response).to have_http_status(:success)
    end
  end

end
