class ChangeSyntaxIDs < ActiveRecord::Migration
  def change
  	remove_column :matches, :playerOneID
  	remove_column :matches, :playerTwoID
  	remove_column :players, :userID
  	remove_column :ranks, :playerID
  	remove_column :ranks, :sportID
  	
  	add_column :matches, :player_one_id, :integer
  	add_column :matches, :player_two_id, :integer
  	add_column :players, :user_id, :integer
  	add_column :ranks, :player_id, :integer
  	add_column :ranks, :sport_id, :integer

  end
end
