class Portfolio < ApplicationRecord
	#Validation of the required feilds
	validates_presence_of :title, :body, :main_image , :thumb_image

	def self.angular
		where(subtitle: 'Angular')
	end 

	scope :ruby_on_rails_portfolio, -> {where(subtitle: 'Ruby on Rails ')}
end
