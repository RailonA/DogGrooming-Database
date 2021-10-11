Rails.application.routes.draw do
  namespace :admin do
%i(
  users
  services
  appointments
    ).each do |name|
      resources name, only: %i(index show new create edit update destroy)
      resources :roles, only:  %i(index, show)
    end
    #  root to: "user#index"
    # http://localhost:3000/admin/login
    # get    '/login',   to: 'sessions#new'

    # post   '/login',   to: 'sessions#create'
    # delete '/logout',  to: 'sessions#destroy'
  
    end
    # http://localhost:3000/admin/
    get    '/admin',   to: 'admin/sessions#new'
    # get    '/admin',   to: 'admin/sessions#new'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :services, only: [:index]
      resources :appointments, only: [:index, :create]
      resources :users, only: [:show, :create]
      post 'login', to: 'sessions#create'
    end
  end
end
