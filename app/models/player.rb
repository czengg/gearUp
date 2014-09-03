class Player < ActiveRecord::Base

	# RELATIONSHIPS
	has_many :ranks
	has_many :matches, :foreign_key => :player_one_id
	has_one :user
	has_many :sports, :through => :matches 	

	# SCOPES
	scope :alphabetical, -> { order(:last_name) }
	scope :for_user, lambda {|user_id| where('user_id = ?', user_id)}

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

	def last_ten(sportID)
		array = Array.new
		Match.by_player_one(self.id).each do |match|
			if match.sport_id == sportID
				array.push(match)
			end
		end
		Match.by_player_two(self.id).each do |match|
			if match.sport_id == sportID
				array.push(match)
			end
		end
		array.sort_by{|match| match.created_at}.take(10)
	end

	def get_your_challenges(sportID)
		array = Array.new
		Match.by_player_one(self.id).each do |match|
			if match.sport_id == sportID and match.winner_id.nil?
				array.push(match)
			end
		end
		array.sort_by{|match| match.created_at}
	end

	def get_challenges_to_you(sportID)
		array = Array.new
		Match.by_player_two(self.id).each do |match|
			if match.sport_id == sportID and match.winner_id.nil?
				array.push(match)
			end
		end
		array.sort_by{|match| match.created_at}
	end

	def get_matches
		array = Array.new
		Match.by_player_one(self.id).each do |match|
			array.push(match)
		end
		Match.by_player_two(self.id).each do |match|
			array.push(match)
		end
		return array
	end



end
