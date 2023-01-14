
Rails.application.routes.draw do
  root   "static_pages#home"
  get    "/help",    to: "static_pages#help"
  get    "/about",   to: "static_pages#about"
  get    "/contact", to: "static_pages#contact"
  get    "/signup",  to: "sessions#new"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"

  resources :users, path: "admin/users"
  resources :account_activations, only: [:edit]
  resources :questions, path: "admin/questions"
  resources :vouchers, path: "admin/vouchers"
  resources :reclamations, path: "admin/reclamations"
  resources :orders, path: "admin/orders"
  resources :deliveries, path: "admin/deliveries"
  resources :comments, path: "admin/comments"
  resources :articles, path: "admin/articles"
  resources :categories, path: "admin/categories"
  resources :stores, path: "admin/stores"
end
