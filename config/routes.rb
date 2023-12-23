Rails.application.routes.draw do
  captcha_route
  devise_for :users
  resources :reviews
  resources :posts

  resources :games do
    collection do
      post :preview
    end
  end

  resource :search, controller: "search"

  root to: "pages#home"

  get "home", to: 'pages#home', as: :homepage
  get "about", to: "pages#about", as: :about

  get "index", to: "games#index", as: :index
  get "delete", to: "games#delete", as: :delete
  get "edit", to: "games#edit", as: :edit

  get "nintendo", to: "games#nintendo", as: :nintendo


  get :comments, to: 'posts#comments'

  get "posts", to: "posts#index"
  get "posts/:id", to: "posts#show"
end
