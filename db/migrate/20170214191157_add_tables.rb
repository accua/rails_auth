class AddTables < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :comment_id, :integer
    remove_column :comments, :post_id, :integer
    remove_column :comments, :user_id, :integer
  end
end
