Rails.application.routes.draw do
  get 'welcome/index'

  resources :eventos

  root 'eventos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
