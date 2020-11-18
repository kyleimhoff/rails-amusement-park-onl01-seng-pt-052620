<<<<<<< HEAD
Rails.application.routes.draw do

  root 'welcome#index'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  post '/rides/create' => 'rides#create'

  resources :users, except:[:destroy]
  resources :attractions, except:[:destroy]
end
=======
Rails.application.routes.draw do
  get '/users/new', to: 'users#new', as: 'new_user'
  root 'static#home'
  get '/users', to:'users#index', as: 'users'
  post '/users', to:'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  get '/attractions', to: 'attractions#index', as: 'attractions'
  get '/signin', to: 'session#new', as: 'signin'
  post '/session', to: 'session#create', as: 'session'
  delete '/session/', to: 'session#destroy'
  get '/attractions/new', to: 'attractions#new', as: 'new_attraction'
  get '/attractions/:id', to: 'attractions#show', as: 'attraction'
  get '/attractions/:id/edit', to: 'attractions#edit', as: 'edit_attraction'
  patch '/attractions/:id', to: 'attractions#update'
  post '/attractions', to: 'attractions#create'
  post '/rides', to:"rides#create", as: 'rides'
end
>>>>>>> b4f61e3f557b1abea4b72f0069efd9c696d74495
