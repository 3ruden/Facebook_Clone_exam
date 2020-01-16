Rails.application.routes.draw do
  root 'home#top'
  resources :pictures
  resources :sessions, only: %i(new create destroy)
  resources :users, only: %i(new create show)
end
