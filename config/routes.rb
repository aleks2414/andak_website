Rails.application.routes.draw do
  devise_for :users
	root to: 'welcome#index'

  resources :contacts, only: [:new, :create]
  get 'quimicos_basicos' => 'pages#quimicos_basicos'
  get 'especialidades' => 'pages#especialidades'
  get 'cuidado_personal' => 'pages#cuidado_personal'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
