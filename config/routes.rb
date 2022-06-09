Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
 
  devise_for :sellers

  root 'products#index'
   
  #to create products with the instance of sellers
  resources :seller do
    resources :products
  end

  #to create cart for each user
  resources :users 
  resources :carts #for carts operations and path

  resources :cart_items
  
  #for CRUD of products
  resources :products

 
end
