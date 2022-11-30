Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users, only: :show
  get "/dashboard", to: "dashboard#dashboard"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :bounties, except: :destroy do
    resources :solutions, only: [:new, :create, :edit, :update]

  end

  resources :solutions, only: :show do
    resources :messages, only: :create
  end
  patch 'solutions/:id', to: 'solutions#custom', as: 'validate_solution'

  resources :solutions, only: :destroy
  #delete 'solutions/:id', to: 'solutions#destroy', as: 'destroy_solution'

  # Defines the root path route ("/")
  # root "articles#index"
end
