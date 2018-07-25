class Topic < ApplicationRecord
    # Relatinship with topics 
	has_many :blogs


  #Validation for mandatory feilds
   validates_presence_of :title
end
