Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show]
  resources :links, only: [:index, :create]
  resources :sessions, only: [:new, :create]

  delete '/logout', to: 'sessions#destroy'

  root 'links#index'

end
