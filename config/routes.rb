Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  resources :toys, only: [:index, :show, :new] do
    resources :bookings, only: []

end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

