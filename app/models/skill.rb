class Skill < ApplicationRecord
	#Validation of the required feilds
	validates_presence_of :title, :percent_utilized
end
