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

  resources :products
  #to create cart for each user
  resources :users 
  resources :carts
  resources :cart_items
  

  

 
end
