Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :sensors do
  #   post '/new_reading', to: 'readings#create'
  # end
  resources :sensors
  resources :readings
end
