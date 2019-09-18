Rails.application.routes.draw do
  resources :char_spells
  resources :spells
  resources :abilities
  resources :characters
  post 'login', to: 'users#login'
  get 'logout', to: 'users#logout'
  post 'get_user_data', to: 'users#get_user_data'
  post 'characters/:id/restAtTown', to: 'characters#restAtTown'
  resources :class_types
  resources :races
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
