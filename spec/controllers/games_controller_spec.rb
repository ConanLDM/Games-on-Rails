require 'rails_helper'

RSpec.describe GamesController, :type => :controller do
  render_views

    describe "#create" do
      let(:game_params) do
        { title: "Test Game",
        description: "This is a test of a game creation",
        review_scores: 90,
        main_image: fixture_file_upload('db/images/mario_strikers.jpeg', 'image/jpeg') }
      end

      subject { post :create, params: { game: game_params } }

      it "redirects to the game index" do
        subject
        expect(response).to redirect_to(games_path) #intended target following refactoring
      end
    end

    describe "#index" do
      before :each do
        Game.create!(title: "Test 2K23", description: "Test Description",
                    review_scores: 90, main_image: fixture_file_upload('db/images/mario_strikers.jpeg', 'image/jpeg'))
      end

      # it "displays the index with games" do
      #   get :index
      #   expect(response.body).to include("Test 2K23")
      # end

      # it "displays the index" do
      #   get :index
      #   expect(response).to have_http_status(:success)
      # end
    end
end
