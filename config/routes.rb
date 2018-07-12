Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'services#index'

  #get 'services/new', to: 'services#new'
  #post 'services', to: 'services#create'
  #get 'services/:id', to: 'services#show', as: 'service'

  resources :services, only: [:new, :create, :show]
end
