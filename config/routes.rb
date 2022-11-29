Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bounties, only: [:index, :new, :create, :update, :edit, :show] do
    resources :solutions, only: [:show, :new, :create, :edit, :update]
  end
  resources :solutions, only: :destroy

  resources :solution, only: :show do
    resources :messages, only: :create
  end

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: :show
  get "/dashboard", to: "dashboard#dashboard"
end
