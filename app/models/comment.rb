class Comment < ApplicationRecord
  include ActionView::RecordIdentifier
  after_create_commit { broadcast_prepend_to [game, :comments], target: "#{dom_id(game)}_comments" }

  belongs_to :game
  has_many :replies, class_name: 'Comment', foreign_key: :parent_id, dependent: :destroy
  belongs_to :parent, class_name: 'Comment', optional: true
  
  validates :body, presence: true, length: { minimum: 4 }
end
