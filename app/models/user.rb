class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable,:trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :lockable,:timeoutable
  has_many :posts

  def full_name
    "#{first_name} #{last_name}"
  end
end
