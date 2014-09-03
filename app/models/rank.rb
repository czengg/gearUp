class Rank < ActiveRecord::Base

	# RELATIONSHIPS
	belongs_to :player
	belongs_to :sport

	# VALIDATIONS
	validates_presence_of :score

	# SCOPES
	scope :for_player, lambda {|player_id| where('player_id = ?', player_id)}

	# METHODS



	
end
