require "application_system_test_case"

class GamesTest < ApplicationSystemTestCase
  include Rails.application.routes.url_helpers
  test "visiting the index" do
    visit index_path

    assert_selector "h1", text: "Games"
  end

  test "should create Game" do
    visit new_game_path

    click_on "New Game"

    fill_in "Title", with: "Creating an Game"
    fill_in "Description", with: "Created this Game successfully!"
    fill_in "Review Scores", with: '88'

    click_on "Create Game"

    assert_text "Creating an Game"
  end
end
