require 'rails_helper'

RSpec.describe "Games", type: :request do
  describe "GET /games" do
    it "renders the intended response" do
      get "/games"
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET /nintendo" do
    it "renders the intended response" do
      get "/nintendo"
      expect(response).to have_http_status(:ok)
    end
  end
end
