Rails.application.routes.draw do
  
  devise_for :users
  resources :notes
  root to: 'notes#index'

  use_doorkeeper do
    skip_controllers :authorizations, :applications, :authorized_applications
  end

  namespace :api do
    resources :notes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
