Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  devise_for :users
  root "home#welcome"
  get "up" => "rails/health#show", as: :rails_health_check
  get "inicio" => "usuarios#inicio", as: :inicio
  get "infoUsuario" => "usuarios#infoUsuario", as: :infUsu
  get "infoUsuario2" => "usuarios#infoUsuario2", as: :infoSegUsu

  resources :cars
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
