Rails.application.routes.draw do
  devise_for :users
 
  root 'products#index'
  


  devise_for :sellers
 
  resources :seller do
    resources :products
  end
end
