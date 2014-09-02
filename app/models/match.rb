class Match < ActiveRecord::Base

	# RELATIONSHIPS
	belongs_to :sport
	belongs_to :player

	# VALIDATIONS
	validates_presence_of :location
	validates_presence_of :sportID

	





end
