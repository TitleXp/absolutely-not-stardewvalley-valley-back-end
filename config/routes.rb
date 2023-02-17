Rails.application.routes.draw do
  # resources :purchases

  # namespace :api do
  #   namespace :v1 do
      resources :products
      resources :farms
      # resources :sessions

      #filtered products
      get '/fruits', to: 'products#fruits'
      get '/vegetables', to: 'products#vegetables'

      #getting currentUser in session
      post '/login', to: 'sessions#login'
      delete '/logout', to: 'sessions#logout'

      #create new user
      post '/signup', to: 'users#create'

      #show purchases for user_id
      get '/purchases', to: 'purchases#show'
      #create new purchase
      post '/purchase/new', to: 'purchases#new_purchase'
      
      get '/authorized', to: 'users#show'
      get '/user', to: 'users#find_user'

  #   end
  # end
end
