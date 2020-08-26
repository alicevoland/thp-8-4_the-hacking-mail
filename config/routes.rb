Rails.application.routes.draw do
  root 'emails#index'
  devise_for :users
  resources :users, only: %i[show]
  resources :emails
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
