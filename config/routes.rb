CfAuth::Application.routes.draw do

 resources :users
 resources :sessions, only: [:create]

 get '/login', to: 'sessions#new'
 get '/logout', to: 'sessions#destroy'

 get '/about-us', to: 'welcome#about', as: :about
 get '/secret', to: 'secret#static'

root "welcome#index"
end
