class ChangeTableUsers < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.remove :img_url
      t.rename :name, :username
      t.string :email, :password
    end

  end
end
