Rails.application.routes.draw do
  root to: 'pages#discover'
  get "/courses", to: "pages#courses"
  get "/nouscontacter", to: "pages#nouscontacter"
  get "/discover", to: "pages#discover"
  get "/batiment", to: "pages#batiment"
  get "/alimentation", to: "pages#home"
  get "/agribalyse", to: "pages#home"
  
  get "/blog", to: "blog#list"
  # query can be a tag or a category
  get "/blog/:query", to: "blog#list"
  get "/blog/:categorie/:title", to: "blog#article"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :aliments, only: [:index, :order_by_name, :show]
  get "/order_by_name", to: "aliments#order_by_name"
  resources :fruitlegs, only: [:new, :create, :index, :update]
  resources :simulations, only: [:new, :create, :index, :update]
end
