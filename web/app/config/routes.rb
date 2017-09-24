Rails.application.routes.draw do
  root 'home#index'

  #devise_for :managers

  devise_for :managers, controllers: {
    sessions: 'managers/sessions'
  }
  resources :keywords
  post '/callback', to: 'linebot#callback'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
