Rails.application.routes.draw do
  root "pages#home"

  resources :weeks do
    resources :days 
    resources :reports
  end

  resources :activities
  
  resources :quartergoals

  resources :days do
      resources :gratefuls
      resources :targets 
  end

  resources :targets do
    member do
      patch :complete
    end
  end  

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks",  :registrations => "registrations" }
  
  resources :users

end
