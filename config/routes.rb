Rails.application.routes.draw do
  resources :games
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
