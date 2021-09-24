Rails.application.routes.draw do
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