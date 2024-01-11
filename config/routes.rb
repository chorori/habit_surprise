Rails.application.routes.draw do
  # get 'habits/new'
  # get 'habits/create'
  get 'home/index'
  root 'home#index'

  resources :habits, only: [:new, :create, :show]
end
