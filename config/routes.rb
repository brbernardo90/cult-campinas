Rails.application.routes.draw do
  devise_for :users
  resources :eventos
  get 'admin/index'
  root 'eventos#index'
  mount API::Base, at: "/"
  use_doorkeeper
  # mount GrapeSwaggerRails::Engine, at: "/documentation"
  # mount Eventos::API => '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
