class AddUsernameAndRfToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :rf, :string
    add_index :users, :rf, unique: true
  end
end
