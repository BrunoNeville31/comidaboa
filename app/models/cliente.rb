class Cliente < ApplicationRecord
	validates :nome, :cpf, :telefone, :email, presence: true



	before_create :set_uuid

	def set_uuid
    	self.id = SecureRandom.uuid
  	end
end
