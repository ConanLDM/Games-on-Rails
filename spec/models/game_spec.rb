require 'rails_helper'

RSpec.describe Game, type: :model do
  subject { build(:game) }

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:review_scores) }
  it { is_expected.to have_one_attached(:image) }
end
