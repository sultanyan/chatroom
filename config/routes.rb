Rails.application.routes.draw do
  
  resources :chrooms do
  	resource :chroom_users
  	resources :messages
  end

  devise_for :users

  resources :pubchats do
    resources :pubchatmessages
  end

  #root "chrooms#index" # Set default url 

  # If user is signed in, make root the public page
  #authenticated :user do
   # root "chrooms#index", as: 'authenticated_root'
  #end

  root "chrooms#index"
  
end
