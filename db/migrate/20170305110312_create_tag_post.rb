class CreateTagPost < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_posts do |t|
      t.integer :post_id
      t.integer :tag_id
    add_foreign_key :tag_posts, :tags
    add_foreign_key :tag_posts, :posts
    end
  end
end
