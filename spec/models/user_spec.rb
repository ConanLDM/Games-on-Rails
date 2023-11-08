require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'validations' do
    subject { build(:user) }

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  end

  # context 'scope tests' do
  #   let! (:params) { {first_name: 'First'}}
  #   before(:each) do
  #     User.new(params).save
  #   end

  describe "scopes" do
    it "returns users with confirmed email" do
      user1 = create(:user, email_confirmed: true)
      user2 = create(:user, email_confirmed: false)

      expect(User.email_confirmed).to include(user1)
      expect(User.email_confirmed).not_to include(user2)
    end
  end
end
