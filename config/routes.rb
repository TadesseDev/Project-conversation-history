Rails.application.routes.draw do
  # get 'comments/new'
  # get 'comments/create'
  # get 'projects/update'
  root  'users#index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
resources :users, only: %i[index] do
  resources :projects, only:  %i[index update] do
    resources :comments, only:  %i[create]
  end
end
  # Defines the root path route ("/")
  # root "articles#index"
end
