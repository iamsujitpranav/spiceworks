Rails.application.routes.draw do
  #devise_for :users
  #get 'comment/index'
  #get 'comment/show'
  #get 'comment/new'
  #get 'posts/index'
  #get 'posts/show'
  #get 'posts/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	root 'posts#index'

	resources :posts do
	  resources :comments
	end

	resources :comments do
	  resources :comments
	end

	devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }

end
