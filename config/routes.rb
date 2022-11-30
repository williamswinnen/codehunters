Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bounties, only: [:index, :new, :create, :update, :edit, :show] do
    resources :solutions, only: [ :new, :create, :edit, :update]
  end

  resources :solutions, only: :show do
    resources :messages, only: :create
  end

  resources :solutions, only: :destroy
  #delete 'solutions/:id', to: 'solutions#destroy', as: 'destroy_solution'

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: :show
  get "/dashboard", to: "dashboard#dashboard"
end
