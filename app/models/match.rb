class Match < ActiveRecord::Base

	# RELATIONSHIPS
	belongs_to :sport
	belongs_to :player
	has_many :rank

	# SCOPE
	scope :by_player_one, lambda {|player_id| where('player_one_id = ?', player_id)}
	scope :by_player_two, lambda {|player_id| where('player_two_id = ?', player_id)}


	# VALIDATIONS
	validates_presence_of :location
	validates_presence_of :sport_id

	# SCOPES
	scope :by_location, -> { order("location") }

	# METHODS
	

	





end
