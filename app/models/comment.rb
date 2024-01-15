class Comment < ApplicationRecord
  include ActionView::RecordIdentifier
  after_create_commit { broadcast_prepend_to [game, :comments], target: "#{dom_id(game)}_comments" }

  belongs_to :game
  validates :body, presence: true, length: { minimum: 4 }
end
