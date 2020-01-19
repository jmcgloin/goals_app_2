Rails.application.routes.draw do
  
  namespace :api  do
    namespace :v1 do

      devise_for :users
      root to: 'session#welcome'
      get '/users/:id', to: 'users#show'
      get '/goals', to: 'goals#index'
      get '/goals/:id', to: 'goals#show'
      post '/goals', to: 'goals#create'
      patch '/goals/:id', to: 'goals#update'
      delete '/goals/:id', to: 'goals#destroy'
      get '/steps', to: 'steps#index'
      get '/steps/:id', to: 'steps#show'
      post '/steps', to: 'steps#create'
      patch '/steps/:id', to: 'steps#update'
      delete '/steps/:id', to: 'steps#destroy'

    end
  end

end
