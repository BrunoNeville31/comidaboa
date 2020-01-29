class Pedido < ApplicationRecord
  belongs_to :cliente
  before_create :set_uuid

	def set_uuid
    	self.id = SecureRandom.uuid
  	end
end
