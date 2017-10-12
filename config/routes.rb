Rails.application.routes.draw do
  get 'user/new'

  get 'login/index'

  root 'login#index'

  get 'webpage/edit'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
