Rails.application.routes.draw do
  root "blog#index"
  resources :blog do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
