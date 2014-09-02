class Rank < ActiveRecord::Base

	# RELATIONSHIPS
	belongs_to :player
	belongs_to :sport

	# VALIDATIONS
	validates_presence_of :position

	
end
