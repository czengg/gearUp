class Player < ActiveRecord::Base

	# RELATIONSHIPS
	has_many :ranks
	has_many :matches
	has_one :user
	has_many :sports, :through => :ranks	

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

end
