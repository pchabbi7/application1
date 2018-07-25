class Blog < ApplicationRecord
  #relation to topic
  belongs_to :topic
 
  enum status: {draft: 0, published:1}
  	
  extend FriendlyId
  friendly_id :title, use: :slugged

  #Validation for mandatory feilds
   validates_presence_of :title, :body
end
