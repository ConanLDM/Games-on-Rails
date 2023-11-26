require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(first_name: 'Mario', last_name: 'Luigi') }

  describe '#full_name' do
    subject { user.full_name }

    context 'when a user has a first_name and a last_name' do
      it "returns the user's full name" do
        expect(subject).to eq("Mario Luigi")
      end
    end

    context 'when a user has no last_name' do
      it "returns an error" do
        expect(subject).to raise_error(UserErrors::InvalidLastName)
      end
    end
  end

  describe 'validations' do
    subject { build(:user) }

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  end
end
