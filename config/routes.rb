Teste1::Application.routes.draw do

	resources :categorias

	resources :categorias

	resources :perfis

	devise_for :admin,
			:path => '/',
			:path_names => {
				:sign_in  => 'entrar',
				:sign_out => 'sair',
				:sign_up => 'registrar'}

	root :to => "home#index"
	
end
