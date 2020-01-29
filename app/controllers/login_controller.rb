class LoginController < ApplicationController
	skip_before_action :verify_authenticity_token, :valida_logado_admin
	layout "login"

	def index

	end
	def logar
		admnistradores = Admnistrador.where(email: params[:email], senha: params[:senha])
		if admnistradores.count > 0
			admnistrador = admnistradores.first

			time = params["lembrar"] == 1 ? 1.year.from_now : 30.minutes.from_now	
			value = {
				id: admnistrador.id,
				nome: admnistrador.nome,
				email: admnistrador.email
			}
			cookies[:comidaboa_admin] = {value: value.to_json, expires: time, httponly: true}
			redirect_to '/admin'
		else
			flash[:error] = "Email ou senha invalidos"
			redirect_to '/'

		end

	end

	def sair
		cookies[:comidaboa_admin] = nil
		redirect_to '/login'
	end
end
