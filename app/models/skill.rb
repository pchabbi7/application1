class Skill < ApplicationRecord
	include Placeholder
	#Validation of the required feilds
	validates_presence_of :title, :percent_utilized

	after_initialize :set_defaults

	def set_defaults
		self.badge ||= Placeholder.image_generator(600,400)
	end #set_defaults

end
