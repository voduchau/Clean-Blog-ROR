Rails.application.routes.draw do
  devise_for :users
  get "login" => "session#new"
  post    "login"    => "session#create"
  delete  "logout"   => "session#destroy"
  root "blog#index"
  resources :blog do
    resources :comments
  end
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
