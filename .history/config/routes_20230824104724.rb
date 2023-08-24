Rails.application.routes.draw do
  resources :posts
  devise_for :users
  get 'home/index'

  #Usuario autenticado
  authenticated :user do
    root 'posts#index', as: 'authenticated_root'
  end

  #Usuario no autenticado
  devise_scope :user do
    root 'home#index'
  end
end
