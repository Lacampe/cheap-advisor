Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # VERB PATH, to: CONTROLLER#ACTION

  # # read all restaurants
  # get '/restaurants', to: 'restaurants#index'

  # # read one restaurant
  # get '/restaurants/:id', to: 'restaurants#show'

  # # create one restaurant
  # get '/restaurants/new', to: 'restaurants#new'
  # post '/restaurants', to: 'restaurants#create'

  # # update one restaurant
  # get '/restaurants/:id/edit', to: 'restaurants#edit'
  # patch '/restaurants/:id', to: 'restaurants#update'

  # # delete one restaurant
  # delete '/restaurants/:id', to: 'restaurants#destroy'

  resources :restaurants

end
