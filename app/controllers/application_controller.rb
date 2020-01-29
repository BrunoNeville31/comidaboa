class ApplicationController < ActionController::Base
	before_action :valida_logado_admin


	def valida_logado_admin
		if cookies[:comidaboa_admin].present?
			hash_admin = JSON.parse(cookies[:comidaboa_admin])
			if hash_admin["id"].present?
				admnistradores = Admnistrador.where(id: hash_admin["id"])
				if admnistradores.count > 0
					@admnistrador = admnistradores.first
					return
				end
			end
		end
		redirect_to '/login'
	end
end
