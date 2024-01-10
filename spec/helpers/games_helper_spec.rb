require 'rails_helper'
require 'games_helper'

RSpec.describe GamesHelper, type: :helper do
  describe '#display_game_image' do
    let(:game) { create(:game) }

    context 'when the game has a main image attached' do
      it 'displays the game\'s main image' do
        image_path = Rails.root.join('spec/fixtures/image.jpeg')
        if File.exist?(image_path)
          game.main_image.attach(io: File.open(image_path), filename: 'image.jpeg')
        else
          puts "Image file not found at #{image_path}"
        end
      end
    end

    context 'when the game does not have a main image attached' do
      it 'displays the default image' do
        expect(helper.display_game_image(game)).to match(%r{<img src="/assets/default-[a-f0-9]+.png" width="250" height="400" />})
      end
    end
  end
end
