class TipoProduto < ApplicationRecord
	has_many :produto 
	before_create :set_uuid

	def set_uuid
    	self.id = SecureRandom.uuid
  	end
end
