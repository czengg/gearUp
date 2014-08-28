class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :location
      t.integer :playerOneID
      t.integer :playerTwoID
      t.integer :sportID

      t.timestamps
    end
  end
end
