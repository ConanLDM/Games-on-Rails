class User < ApplicationRecord
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  has_many :posts
end
