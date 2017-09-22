Rails.application.routes.draw do
  resources :keywords
  post '/callback', to: 'linebot#callback'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
