Rails.application.routes.draw do
  get 'venues/index'
  get 'venues/show'
  get 'venues/new'
  get 'venues/create'
  get 'venues/destroy'
  devise_for :bookings
  devise_for :venues
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
