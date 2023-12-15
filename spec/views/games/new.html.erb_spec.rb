require 'rails_helper'

RSpec.describe "games/new", type: :view do
  before(:each) do
    assign(:game, Game.create!(
      title: "MyString",
      description: "MyText",
      review_scores: 96
    ))
  end

  it "renders new game form" do
    render

    assert_select "form[action=?][method=?]", games_path, "game" do

      assert_select "input[name=?]", "game[title]"

      assert_select "textarea[name=?]", "game[description]"
    end
  end
end
