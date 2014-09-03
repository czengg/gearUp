class Sport < ActiveRecord::Base

	# RELATIONSHIPS
	has_many :ranks
	has_many :matches
	has_many :players, :through => :ranks

	# SCOPES
	scope :alphabetical, -> { order("name") }

	# VALIDATIONS
	validates_presence_of :name

	# METHODS

	def rankedPlayerPosition(playerID)
		self.ranks.each do |rank|
			if rank.player_id == playerID
				return rank.score
			end
		end
	end


end
