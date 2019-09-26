Rails.application.routes.draw do
  resources :authors 
  resources :posts 

  #could write custom paths with more knowledge that has been shared. Resources restfully standarizes them for me 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
