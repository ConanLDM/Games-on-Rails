class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable,:trackable and :omniauthable
  # devise security options below
  # :password_expirable, :secure_validatable, :password_archivable,
  # :session_limitable, :expirable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :timeoutable, :uncommon_password
  has_many :posts

  def full_name
    "#{first_name} #{last_name}"
  end

  def active_for_authentication?
    super && approved?
  end

  def inactive_message
    approved? ? super : :not_approved
  end
end
