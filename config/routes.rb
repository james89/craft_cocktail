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
#== Route Map
# Generated on 24 Oct 2013 11:25
#
#         login GET    /login(.:format)              session#new
#               POST   /login(.:format)              session#create
#        logout GET    /logout(.:format)             session#destroy
#         users GET    /users(.:format)              users#index
#               POST   /users(.:format)              users#create
#      new_user GET    /users/new(.:format)          users#new
#     edit_user GET    /users/:id/edit(.:format)     users#edit
#          user GET    /users/:id(.:format)          users#show
#               PUT    /users/:id(.:format)          users#update
#               DELETE /users/:id(.:format)          users#destroy
#     favorites GET    /favorites(.:format)          favorites#index
#               POST   /favorites(.:format)          favorites#create
#  new_favorite GET    /favorites/new(.:format)      favorites#new
# edit_favorite GET    /favorites/:id/edit(.:format) favorites#edit
#      favorite GET    /favorites/:id(.:format)      favorites#show
#               PUT    /favorites/:id(.:format)      favorites#update
#               DELETE /favorites/:id(.:format)      favorites#destroy
#     cocktails GET    /cocktails(.:format)          cocktails#index
#               POST   /cocktails(.:format)          cocktails#create
#  new_cocktail GET    /cocktails/new(.:format)      cocktails#new
# edit_cocktail GET    /cocktails/:id/edit(.:format) cocktails#edit
#      cocktail GET    /cocktails/:id(.:format)      cocktails#show
#               PUT    /cocktails/:id(.:format)      cocktails#update
#               DELETE /cocktails/:id(.:format)      cocktails#destroy
#          root        /                             cocktails#index
