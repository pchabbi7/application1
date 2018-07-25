class Blog < ApplicationRecord

  enum status: {draft: 0, published:1}
  	
  extend FriendlyId
  friendly_id :title, use: :slugged

  #Validation for mandatory feilds
   validates_presence_of :title, :body
end
