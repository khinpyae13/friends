Rails.application.routes.draw do
 
 devise_for :users

devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end
  devise_for :models
  resources :friends
devise_scope :friends do  
   get '/friends/destroy' => 'friends#destroy'     
end
          
  #get 'home/index'

  root 'friends#index'
  get 'home/about'
  get '/contact1'=> 'home#contact'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end 
