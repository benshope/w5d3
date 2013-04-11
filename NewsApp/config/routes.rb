NewsApp::Application.routes.draw do
  resources :newspapers do
    resources :subscription_plans
  end
  resources :subscription_plans
  resources :subscriptions
  resources :users
end
