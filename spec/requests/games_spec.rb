require 'rails_helper'

RSpec.describe "Games Show page", type: :request do
  it "renders the Games Show page" do
    get "/games/show"
    expect(response).to render_template(:show)
  end
end
