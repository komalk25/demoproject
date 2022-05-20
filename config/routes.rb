Rails.application.routes.draw do
  
  root 'seller#index'
  devise_for :sellers, controllers: {
    registrations: 'registrations'
  }
  resources :seller do
    resources :products
  end
end
