Rails.application.routes.draw do
  devise_for :users
  get 'admin/index'

  resources :eventos

  root 'eventos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
