class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :userID
      t.string :phone
      t.string :zip

      t.timestamps
    end
  end
end
