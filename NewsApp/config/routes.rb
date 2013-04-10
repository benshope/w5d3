NewsApp::Application.routes.draw do
  resources :newspapers do
    resources :subscriptions
  end
  resources :subscription_plans
  resources :subscriptions
  resources :users
end
