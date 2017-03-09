class CreateFavourites < ActiveRecord::Migration[5.0]
  def change
    create_table :favourites do |t|
      t.integer :user_id
      t.integer :post_id
    add_foreign_key :favourites, :users
    add_foreign_key :favourites, :posts

    end
  end
end
