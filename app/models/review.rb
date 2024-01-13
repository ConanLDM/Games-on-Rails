class Review < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :rating, presence: true
  has_one_attached :main_image
  has_rich_text :content
end
