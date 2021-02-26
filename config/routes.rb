Rails.application.routes.draw do
  root to: 'home#top'
	devise_for :users
  resources :posts
  resources :movies

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
