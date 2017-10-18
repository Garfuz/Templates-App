Rails.application.routes.draw do


  root 'dashboard#index'

  resources :users
  resource :session

  resources :webpages


  get 'login' => 'sessions#new'

  get 'signup' => 'users#new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
