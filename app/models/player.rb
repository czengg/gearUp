class Player < ActiveRecord::Base

	# RELATIONSHIPS
	has_many :ranks
	has_many :matches
	has_one :user
	has_many :sports, :through => :ranks	

	# SCOPES
	scope :alphabetical, -> { order(:last_name) }
	scope :last_ten, -> { joins(:matches).where('player_one_id = ? OR player_two_id', :id,:id).limit(10) } 

	# METHODS

	# a method to get owner name in last, first format
	def name
		last_name + ", " + first_name
	end

	# a method to get owner name in first last format
	def proper_name
		first_name + " " + last_name
	end

	def final_score(sportID)
		Ranks.for_player(self.id).each do |rank|
			if rank.player_id == self.id
				total_score += rank.score
			end
		end
		return total_score
	end

end
