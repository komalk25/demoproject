Rails.application.routes.draw do
 
  root 'products#index'
  


  devise_for :sellers
 
  resources :seller do
    resources :products
  end
end
