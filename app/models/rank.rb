class Rank < ActiveRecord::Base

	# RELATIONSHIPS
	belongs_to :player
	belongs_to :sport

	# VALIDATIONS
	validates_presence_of :score

	# SCOPES
	scope :for_player, lambda {|player_id| where('player_id = ?', player_id)}

	# METHODS
	def player_final_score(playerID)
		Ranks.for_player(playerID).each do |rank|
			if rank.player_id == playerID
				total_score += rank.score
			end
		end
		return total_score
	end


	
end
