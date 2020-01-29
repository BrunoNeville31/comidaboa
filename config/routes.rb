Rails.application.routes.draw do
 
  resources :admnistradors
  resources :pedidos do
  	resources :pedido_produtos
  end
  resources :clientes
  resources :produtos 
  resources :tipo_produtos

  get 'produto/:produto_id', to: 'ecommerce#index'
  get 'produto/:produto_id/adicionar', to: 'ecommerce#adicionar'
  get 'produto/:produto_id/remover', to: 'ecommerce#remover'
  get 'carrinho', to: 'ecommerce#carrinho'
  get 'carrinho/fechar', to: 'ecommerce#fechar_carrinho'
  get 'cliente/login', to: 'ecommerce#login_cliente'
  get 'cliente/cadastrar', to: 'ecommerce#cadastrar'
  post 'cliente/criar', to: 'ecommerce#cadastrar_cliente'
  get 'cliente/sair', to: 'ecommerce#sair'
  
  get '/admin', to: 'admin#index'
  get '/login', to: 'login#index'
  post '/login/logar', to: 'login#logar'
  get '/login/sair', to: 'login#sair'
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
