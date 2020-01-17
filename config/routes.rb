Rails.application.routes.draw do
  get 'home/index'
  root to: "home#index"
  resources :products do
    resources :reviews
  end
end
