require "rails_helper"

RSpec.describe 'games/show' do
  before(:each) do
    @game = assign(:game, Game.create!(
    title: "Show this Rspec game 2023",
    description: "This is checking for the game appearing in the individual
    game show page",
    review_scores: 98,
    main_image: fixture_file_upload('mario_strikers.jpeg', 'image/jpeg')
    ))
  end

  it 'renders game attributes in the show page' do
    render
    expect(rendered).to have_selector('h1', text: 'Show this Rspec game 2023')
    expect(rendered).to have_selector('h2', text: 'This is checking for the game appearing in the individual
    game show page')
    expect(rendered).to have_selector('p', text: 'Game Review Score: 98')
    expect(rendered).to have_selector('img')
  end
end
