Rails.application.routes.draw do

  resources :artists
  # get '/artists/:id/edit', to: 'artists#edit'
  # get '/artists', to: 'artists#index'
  # get '/artists/:id', to: 'artists#show'
  # get '/artists/new', to: 'artists#new', as: 'new_artist'
  resources :songs
  resources :genres
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
