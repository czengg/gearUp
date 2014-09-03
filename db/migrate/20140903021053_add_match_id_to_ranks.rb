class AddMatchIdToRanks < ActiveRecord::Migration
  def change
    add_column :ranks, :match_id, :integer
  end
end
