Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
 
  devise_for :sellers

  root 'products#index'
  
  resources :seller do
    resources :products
  end

  resources :products
  
  resources :users 
  
  resources :carts
  
  resources :cart_items

end
