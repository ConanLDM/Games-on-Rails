require 'rails_helper'

RSpec.describe "games/index", type: :view do
  before(:each) do
    assign(:games, [
      Game.create!(
        title: "Rspec 2024",
        description: "this is a RSpec test game description",
        review_scores: 98,
        main_image:fixture_file_upload('mario_wonder.jpeg', 'image/jpeg')
      ),
      Game.create!(
        title: "Rspec 2022",
        description: "this is another RSpec game description for a view file
        test",
        review_scores: 92,
        main_image: fixture_file_upload('mario_strikers.jpeg', 'image/jpeg')
      ),
      Game.create!(
        title: "Rspec 2018",
        description: "This is a RSpec game without an attached main image",
        review_scores: 92
      )
    ])
    assign(:pagy, Pagy.new(count: Game.count, page: 1))
  end

  it "renders multiple games" do
    render
    assert_select 'div#games', 1
    assert_select 'div#games p', 12
    assert_select 'div#games p button.learn-more', 3
  end
end
