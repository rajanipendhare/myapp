Rails.application.routes.draw do
  resources :employees
  get 'users/new'
  resources :tickets
  post '/login', controller: :users, action: :login
  delete '/logout', controller: :users, action: :logout
  root 'users#new'
	get 'home/dashboard'
	get 'home/SignUp'
	get 'home/table'
end