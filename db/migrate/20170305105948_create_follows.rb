class CreateFollows < ActiveRecord::Migration[5.0]
  def change
    create_table :follows do |t|
      t.integer :follower_id
      t.integer :followed_id
    add_foreign_key :follows, :user, column: :follower_id
    add_foreign_key :follows, :user, column: :followed_id
    end
  end
end
