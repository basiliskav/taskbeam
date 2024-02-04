Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get 'tasks/select_day', to: 'tasks#select_day', as: 'select_day_tasks'
  get 'tasks/show_by_day', to: 'tasks#show_by_day', as: 'show_by_day_tasks'

  post 'tasks/show_by_day', to: 'tasks#show_by_day'
  resources :tasks
end
