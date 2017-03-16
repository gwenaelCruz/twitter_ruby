class ChangeTableUsers < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.remove :email, :password
      t.rename :username, :name
      t.string :img_url
    end

  end
end
