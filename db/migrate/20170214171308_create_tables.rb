class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :users  do |u|
      u.string :name
      u.string :email
      u.string :password

      u.timestamps
    end

    create_table :posts do |po|
      po.string :title
      po.string :content
      po.integer :user_id

      po.timestamps
    end

    create_table :comments do |c|
      c.string :content
      c.integer :user_id
      c.integer :post_id

      c.timestamps
    end
  end
end
