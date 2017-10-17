Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :dinners, only: [:new, :create, :index, :show, :edit, :update]
  resources :incoming_student, only: [:new, :create, :show, :edit, :update]
  resources :host_student, only: [:new, :create, :show, :edit, :update]
end
