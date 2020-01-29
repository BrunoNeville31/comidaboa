class Admnistrador < ApplicationRecord
	before_create :set_uuid

	def set_uuid
    	self.id = SecureRandom.uuid
  	end
end
