class PedidoProduto < ApplicationRecord
  belongs_to :pedido
  belongs_to :produto

  before_create :set_uuid

	def set_uuid
    	self.id = SecureRandom.uuid
  	end
end
