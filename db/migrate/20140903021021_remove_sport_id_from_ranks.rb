class RemoveSportIdFromRanks < ActiveRecord::Migration
  def change
    remove_column :ranks, :sport_id, :integer
  end
end
