Rails.application.routes.draw do
  resources :games
  resource :search, controller: "search"

  root to: "pages#home"

  get "home", to: 'pages#home', as: :homepage
  get "about", to: "pages#about", as: :about

  get "index", to: "games#index", as: :index
  get "delete", to: "games#delete", as: :delete
  get "edit", to: "games#edit", as: :edit

  get "nintendo", to: "games#nintendo", as: :nintendo

end
