class Sport < ActiveRecord::Base

	# RELATIONSHIPS
	has_many :ranks
	has_many :matches
	has_many :players, :through => :matches

	# SCOPES
	scope :alphabetical, -> { order("name") }

	# VALIDATIONS
	validates_presence_of :name

	# METHODS

	def rankedPlayerPosition(playerID)
		total_score = 0
		self.matches.each do |match|
			match.rank.each do |rank|
				if rank.player_id == playerID
					total_score += rank.score
				end
			end
		end
		return total_score
	end

	def players
		array = Array.new
		self.matches.each do |match|
			array.push(Player.find(match.player_one_id))
			array.push(Player.find(match.player_two_id))
		end
		array
	end

end
