class Portfolio < ApplicationRecord
	#Validation of the required feilds
	validates_presence_of :title, :body, :main_image , :thumb_image

	def self.angular
		where(subtitle: 'Angular')
	end 

	scope :ruby_on_rails_portfolio, -> {where(subtitle: 'Ruby on Rails ')}

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= "http://via.placeholder.com/600X400"
		self.thumb_image ||= "http://via.placeholder.com/350X200"
	end #set_defaults
end
