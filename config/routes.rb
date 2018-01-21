Rails.application.routes.draw do
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :sensors do
  #   post '/new_reading', to: 'readings#create'
  # end
  root to: 'home#index'

  get 'dashboard', to: 'main#index'

  resources :sensors
  resources :readings


end
