Rails.application.routes.draw do
  root to: 'pages#home'
  get "/courses", to: "pages#courses"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :aliments, only: [:index]
  resources :fruitlegs, only: [:new, :create, :index, :update]
  resources :simulations, only: [:new, :create, :index, :update]
end
