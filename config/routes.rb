Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
 
  root 'products#index'
  get "sellers/:id/products/:id", to: "products#show"
  resources :users
  devise_for :sellers
  
  #to create products with thw instance of sellers
  resources :seller do
    resources :products
  end
  #for CRUD of products
  resources :products

  #for carts operations and path
  resources :carts
end
