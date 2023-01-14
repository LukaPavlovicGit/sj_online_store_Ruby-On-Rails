
Rails.application.routes.draw do
  resources :questions
  resources :vouchers
  resources :reclamations
  resources :orders
  resources :deliveries
  resources :comments
  resources :articles
  resources :categories
  resources :stores
  root   "static_pages#home"
  get    "/help",    to: "static_pages#help"
  get    "/about",   to: "static_pages#about"
  get    "/contact", to: "static_pages#contact"
  get    "/signup",  to: "sessions#new"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  resources :users
  resources :account_activations, only: [:edit]
end
