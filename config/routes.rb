Rails.application.routes.draw do
  root 'seller#index'
  devise_for :sellers
  
end
