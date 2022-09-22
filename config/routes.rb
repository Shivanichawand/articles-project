Rails.application.routes.draw do
  # get 'users/indes'
  # get 'users/new'
  # get 'users/show'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/destroy'
  # get 'articles/index'
  # get 'articles/new'
  # get 'articles/edit'
  # get 'articles/show'
  # # get 'articles/create'
  # get 'articles/destroy'
  # devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  devise_for :users, :path_prefix => 'd'
resources :users, :only =>[:show]
  # devise_for :users
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "articles#index"
end
