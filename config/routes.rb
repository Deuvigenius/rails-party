Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "/profile", to: "pages#profile", as: "user_profile"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  resources :gonflables do
    resources :rents, only: [:create]
  end

  resources :rents do
    member do
      patch :accept
      patch :reject
    end
  end

end
