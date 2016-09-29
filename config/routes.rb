Rails.application.routes.draw do
  root 'main#index'

  get 'search/create'

  devise_for :users
  resources :posts
  get "posts/index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
