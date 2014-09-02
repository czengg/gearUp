class RemoveSportIdFromMatches < ActiveRecord::Migration
  def change
    remove_column :matches, :sportID, :integer
  end
end
