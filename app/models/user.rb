class User < ApplicationRecord
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :first_name, presence: true
  has_many :posts
end
