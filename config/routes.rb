Rails.application.routes.draw do
  get 'users/new'
  # get 'tickets/index'
  # get 'tickets/new'
  # get 'tickets/edit'
  resources :tickets do
    collection do
      get 'collect_districts'
    end
  end
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
