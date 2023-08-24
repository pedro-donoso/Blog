Rails.application.routes.draw do
  resources :posts
  devise_for :users
  get 'home/index'

  resource :posts, except: [:index]
  root "home#index"
  get '/posts', to: 'posts#index', as: 'user_root'
end
