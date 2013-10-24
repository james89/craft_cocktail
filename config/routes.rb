CraftcocktailApp::Application.routes.draw do

  get '/signup' => "users#new"
  get '/login' => "session#new"
  post '/login' => "session#create"
  get '/logout' => "session#destroy"


  resources :users
  resources :favorites
  resources :cocktails


  root :to => 'cocktails#index'


end
