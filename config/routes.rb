Rails.application.routes.draw do
  root to: 'pages#discover'

  get "/nouscontacter", to: "pages#nouscontacter"
  get "/discover", to: "pages#discover"
  get "/transport", to: "pages#transport"
  get "/alimentation", to: "pages#alimentation"
  get "/agribalyse", to: "pages#home"
  get "/mentions-legales", to: "pages#mentions_legales"
  get "/vieprivee", to: "pages#vieprivee"
  get "/stats", to: "pages#stats"
  get "/agribalyse", to: "pages#home"
  get "/impactclimat", to: "pages#impactclimat"

  get "/blog", to: "blog#list"
  # query can be a tag or a category
  get "/blog/:query", to: "blog#list"
  get "/blog/:categorie/:title", to: "blog#article"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/aliments", to: "aliments#index", as: 'aliments'
  get "/agribalyse/:id", to: "aliments#show", as: 'aliment'
  get "/order_by_name", to: "aliments#order_by_name"

end
