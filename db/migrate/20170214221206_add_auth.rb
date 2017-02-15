class AddAuth < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :password, :string
    add_column :users, :password_hash, :string
    add_column :users, :password_salt, :string
  end
end
