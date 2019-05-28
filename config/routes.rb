Rails.application.routes.draw do
  get 'users/show'
  devise_for :users

  resources :bosses

  resources :users

  get 'top/index'

  root to: "top#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
