class AddEmailConfirmedToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :email_confirmed, :boolean
  end
end
