Rails.application.routes.draw do
  root 'sessions#new'
  resources :pictures
  resources :sessions, only: %i(new create destroy)
  resources :users, only: %i(new create show)
end
