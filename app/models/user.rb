class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable,:trackable and :omniauthable
  # devise security options below
  # :password_expirable, :secure_validatable, :password_archivable,
  # :session_limitable, :expirable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :timeoutable
  has_many :posts

  def full_name
    "#{first_name} #{last_name}"
  end
end
