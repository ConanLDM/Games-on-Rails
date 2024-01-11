require 'rails_helper'

RSpec.describe "Sign In Page", type: :request do
  describe "GET /users/sign_in" do
    it "Renders the user sign in page" do
      get "/users/sign_in"
      expect(response).to render_template(:sign_in)
    end
  end
end
