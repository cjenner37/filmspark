Rails.application.routes.draw do

  get 'creators/index'

  get 'creators/show'

  resources :reviews
  resources :movies
  resources :viewings

  get 'users/index'
  get 'users/show'

  devise_for :users, controllers: {
     sessions: 'users/sessions',
     registrations: 'users/registrations'
	}

  root 'home#index'

end
