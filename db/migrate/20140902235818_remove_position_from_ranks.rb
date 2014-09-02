class RemovePositionFromRanks < ActiveRecord::Migration
  def change
    remove_column :ranks, :position, :integer
  end
end
