Rails.application.routes.draw do
  root to: 'pages#discover'

  get "/nouscontacter", to: "pages#nouscontacter"
  get "/discover", to: "pages#discover"
  get "/transport", to: "pages#transport"
  get "/alimentation", to: "pages#alimentation"
  get "/agribalyse", to: "pages#agribalyse"
  get "/agribalyse_eng", to: "pages#agribalyse_eng"
  get "/mentions-legales", to: "pages#mentions_legales"
  get "/vieprivee", to: "pages#vieprivee"
  get "/stats", to: "pages#stats"
  get "/impactcarbone", to: "pages#impactcarbone"
  get "/batiment", to: "pages#batiment"



  get "/blog", to: "blog#list"
  # query can be a tag or a category
  get "/blog/:query", to: "blog#list"
  get "/blog/:categorie/:title", to: "blog#article"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
