Rails.application.routes.draw do
  get 'pages/home', to: "pages#home"
  root to: "pages#home"
  mount Attachinary::Engine => "/attachinary"
  resources :ingredients, only: [:show]
  resources :cocktails, except: [:edit, :update, :destroy] do
    resources :doses, only: [:new, :create, :destroy]
  end
end
