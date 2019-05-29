Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'users/show'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  resources :bosses do
    resources :boss_logs, only: %i[new create]
  end

  resources :users

  get 'top/index'

  root to: "top#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
