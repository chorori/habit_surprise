Rails.application.routes.draw do

  get 'home/index'
  root 'home#index'

  resources :habits, only: [:index,:new, :create, :show, :edit, :update, :destroy]
end
