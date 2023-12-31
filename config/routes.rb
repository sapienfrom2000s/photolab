Rails.application.routes.draw do
  resources :photos
  resources :cards
  # Recommended is devise_for :users, skip: [:registrations, :confirmations], skip_helpers: true but I want to see the conflicts
    devise_for :admins, only: :sessions, controllers:{ sessions: 'admin/sessions'}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "cards#index"
end
