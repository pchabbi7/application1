class Portfolio < ApplicationRecord
	#Validation of the required feilds
	validates_presence_of :title, :body, :main_image , :thumb_image
end
