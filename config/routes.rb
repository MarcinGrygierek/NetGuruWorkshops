Rails.application.routes.draw do
  get 'pages/main'

devise_for :users
resources :users

  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'pages#main'
end
