class AddFranchiseToGames < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :franchise, :string
  end
end
