Rails.application.routes.draw do
  resources :contents
  resources :users
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
end
