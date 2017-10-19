Rails.application.routes.draw do

  root 'dashboard#index'

  resources :users
  resource :session

  get 'login' => 'sessions#new'

  get 'signup' => 'users#new'


  resources :webpages

  get 'template' => 'view#model'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
