Rails.application.routes.draw do
  resources :posts
  resources :movies
  resources :users
  get 'movie/show'

  get 'post/show'

  get 'home/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
