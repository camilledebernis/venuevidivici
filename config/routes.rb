Rails.application.routes.draw do
  resources :bookings, only: [:new, :create, :index, :show, :destroy]
  resources :venues, only: [:new, :create, :index, :show, :destroy]

  #devise_for :bookings
  #devise_for :venues
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
