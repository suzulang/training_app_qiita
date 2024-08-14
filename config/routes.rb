Rails.application.routes.draw do
  resources :trainings, only: [:index, :new, :create, :destroy]
  root 'trainings#index'
end