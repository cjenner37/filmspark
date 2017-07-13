Rails.application.routes.draw do
	
  resources :reviews
  resources :movies

  get 'users/index'
  get 'users/show'

  devise_for :users, controllers: {
     sessions: 'users/sessions',
     registrations: 'users/registrations'
	}

  root 'home#index'

end
