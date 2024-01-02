class AddGenreIdToGames < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :genre_id, :integer
  end
end
