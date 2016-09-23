Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :posts
  end

  resources :users do
    resources :comments
  end

  root to: "application#index"
end
