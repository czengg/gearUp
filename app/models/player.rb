class Player < ActiveRecord::Base

	# RELATIONSHIPS
	has_many :ranks
	has_many :matches, :foreign_key => :player_one_id
	has_many :matches, :foreign_key => :player_two_id
	has_one :user
	has_many :sports, :through => :matches 	

	# SCOPES
	scope :alphabetical, -> { order(:last_name) }

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

	def last_ten
		array = Array.new
		Match.by_player_one(self.id).each do |match|
			array.push(match)
		end
		Match.by_player_two(self.id).each do |match|
			array.push(match)
		end
		array.sort_by{|match| match.created_at}.take(10)
	end


end
