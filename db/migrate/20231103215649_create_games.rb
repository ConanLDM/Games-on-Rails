class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :title
      t.text :description
      t.string :image
      t.integer :review_scores

      t.timestamps
    end
  end
end
