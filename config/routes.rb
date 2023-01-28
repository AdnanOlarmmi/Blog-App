Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get 'users', to: 'users#index'
  # get 'users/:id', to: 'users#show'
  # get 'users/:user_id/posts', to: 'posts#index'
  # get 'users/:user_id/posts/:id', to: 'posts#show'
  root "users#index"
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create]
end
end
