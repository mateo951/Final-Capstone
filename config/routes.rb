Rails.application.routes.draw do
  # resources :users
  # resources :reservations
  # resources :rooms
  namespace :api do
    namespace :v1 do
      resources :reservations
      resources :rooms
    end
  end  
end
