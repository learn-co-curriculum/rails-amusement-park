Rails.application.routes.draw do
  resources :users
  resources :attractions
  resources :rides

  root :to => 'users#index'

  get '/signin', to: 'sessions#new', as: 'signin'
  post   '/signin',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
