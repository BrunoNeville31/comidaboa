class Produto < ApplicationRecord
	belongs_to :tipo_produto
	before_create :set_uuid

	def set_uuid
    	self.id = SecureRandom.uuid
  	end
end
