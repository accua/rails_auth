class ChangeTables < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :comment_id, :integer
    add_column :comments, :post_id, :integer
    add_column :comments, :user_id, :integer
  end
end
