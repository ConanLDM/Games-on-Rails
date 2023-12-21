class Game < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true
  validates :description, presence: true, length: { in: 5..250 }
  validates :review_scores, presence: true
  has_one_attached :main_image

  broadcasts_refreshes
 end
