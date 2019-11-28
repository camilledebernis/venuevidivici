Rails.application.routes.draw do
  get "venues/my_own", to: "venues#my_own", as: :my_own
  resources :venues, only: [:new, :create, :index, :show, :destroy] do
    resources :bookings, only: [:create]
  end
  #devise_for :bookings
  #devise_for :venues
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
