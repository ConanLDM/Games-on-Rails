require 'rails_helper'

RSpec.describe Game, type: :model do
  subject { build(:game) }

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:review_scores) }
  it { is_expected.to have_one_attached(:main_image) }

  it "is valid with valid attributes" do
    subject.title = "Anything"
    subject.description = "Anything"
  end


  it "is not valid without a title" do
    game = Game.new(title: nil)
    expect(game).to_not be_valid
  end

  it "is not valid without a description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end
end
