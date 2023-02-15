Rails.application.routes.draw do
  # resources :purchases

  # namespace :api do
  #   namespace :v1 do
      resources :products
      resources :farms

      get '/fruits', to: 'products#fruits'
      get '/vegetables', to: 'products#vegetables'

      post '/login', to: 'sessions#login'
      delete '/logout', to: 'sessions#logout'


  #   end
  # end
end
