Rails.application.routes.draw do
  resources :users

  resources :webpages

  resource :session

  get 'login' => 'sessions#new'

  get 'signup' => 'users#new'

  root 'dashboard#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
