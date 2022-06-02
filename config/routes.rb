Rails.application.routes.draw do
  devise_for :users
 
  root 'products#index'
  get "sellers/:id/products/:id", to: "products#show"

  devise_for :sellers
 
  resources :seller do
    resources :products
  end
end
