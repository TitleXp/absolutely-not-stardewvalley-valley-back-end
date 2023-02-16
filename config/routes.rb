Rails.application.routes.draw do
  # resources :purchases

  # namespace :api do
  #   namespace :v1 do
      resources :products
      resources :farms
      # resources :sessions

      get '/fruits', to: 'products#fruits'
      get '/vegetables', to: 'products#vegetables'

      post '/login', to: 'sessions#login'
      destroy '/logout', to: 'sessions#logout'

      get '/authorized', to: 'users#show'
      get '/user', to: 'users#find_user'
  #   end
  # end
end
