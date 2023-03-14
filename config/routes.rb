Rails.application.routes.draw do
  get 'rojects/update'
  get 'commnets/new'
  get 'commnets/create'
  root  'users#index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
