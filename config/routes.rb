Rails.application.routes.draw do
  resources :articles
  get 'homes/index'
  resources :users
end
