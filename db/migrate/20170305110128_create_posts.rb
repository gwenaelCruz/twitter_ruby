class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :user_id
    add_foreign_key :posts, :users
    end
  end
end
