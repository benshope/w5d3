NewsApp::Application.routes.draw do
  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  resources :newspapers do
    resources :subscription_plans, only: [:new, :create]
  end
  resources :subscription_plans
  resources :subscriptions
  resources :users
end
