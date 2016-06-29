Rails.application.routes.draw do
  resources :bottles
  resources :perfumes
  resources :bottle_types
  resources :perfume_types
  resources :family_types

  get '/', :to => 'static#home'
  root 'static#home'

  namespace :api, defaults: { format: 'json' } do
  	namespace :v1 do
  	  resources :bottles, only: [:create, :update, :show, :index]
      resources :perfumes, only: [:create, :update, :show, :index]
      resources :bottle_types, only: [:create, :update, :show, :index]
      resources :perfume_types, only: [:create, :update, :show, :index]
      resources :family_types, only: [:create, :update, :show, :index]
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
