class AddScoreToRanks < ActiveRecord::Migration
  def change
    add_column :ranks, :score, :integer
  end
end
