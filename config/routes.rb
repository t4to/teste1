Teste1::Application.routes.draw do

	resources :categorias

	#get "home/index"

	resources :categorias

	resources :perfis

	devise_for :admin

	root :to => "home#index"
	
end
