Rails.application.routes.draw do
  namespace :admin do
    root "home#index"
  end

  namespace :member do
    root "home#index"
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations',
    unlocks: 'users/unlocks'
  }

  root 'home#index'
end
