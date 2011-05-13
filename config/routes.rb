Teste1::Application.routes.draw do

	resources :categorias

	resources :categorias

	resources :perfis

	devise_for :admin,
			:path => '/',
			:path_names => {
				:sign_in  => 'login',
				:sign_out => 'logout',
				:sign_up => 'register'}

	root :to => "home#index"
	
end
