Rails.application.routes.draw do
  resources :employees
  get 'users/new'
  resources :tickets
  post '/login', controller: :users, action: :login
  delete '/logout', controller: :users, action: :logout
  root 'users#new'
	  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	# root 'home#index'
	get 'home/dashboard'
	get 'home/SignUp'
	# root 'home#index'
	get 'home/table'
end
