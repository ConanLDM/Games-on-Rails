require 'rails_helper'

RSpec.describe "games/edit", type: :view do
  let(:game) {
    Game.create!(
      title: "MyString",
      description: "MyText",
      review_scores: 64
    )
  }

  before(:each) do
    assign(:game, game)
  end

  it "renders the edit game form" do
    render

    assert_select "form[action=?][method=?]", game_path(game), "post" do

      assert_select "input[name=?]", "game[title]"

      assert_select "textarea[name=?]", "game[description]"

      assert_select "input[name=?]", "game[review_scores]"
    end
  end
end
