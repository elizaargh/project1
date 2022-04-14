Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index]
  resources :activities 
  resources :moods
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  get '/moods' => 'moods#index'
  get '/activities' => 'activities#index'
  get '/activities/show' => 'activities#show'
  get '/activities/new' => 'activities#new' 
  get '/show' => 'pages#show'
end


