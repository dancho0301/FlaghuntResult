Rails.application.routes.draw do
  # resources :games
  # resources :teams
  # resources :samples
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :trainings do
    resources :teams
    resource :games
  end

  resources :member

  # resources :training, shallow: true do
  #   resources :game
  #   resources :team
  # end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin_users
end
