class Comment < ApplicationRecord
  after_create_commit { broadcast_append_later_to @game, target: "comments" }

  belongs_to :game
  validates :body, presence: true, length: { minimum: 4 }
end
