Rails.application.routes.draw do
  captcha_route
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v0, defaults: { format: :json } do
    resources :servers
    resources :sessions, only: [:create, :destroy]
  end
end
