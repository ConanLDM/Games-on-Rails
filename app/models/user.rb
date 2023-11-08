class User < ApplicationRecord
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  has_many :posts

  def full_name
    "#{first_name} #{last_name}"
  end
end
