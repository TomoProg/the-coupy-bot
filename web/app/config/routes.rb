Rails.application.routes.draw do

  devise_for :managers, path: 'admin/managers', controllers: {
    sessions: 'admin/managers/sessions'
  }

  # 管理者画面系
  namespace :admin do
    root 'home#index'
  end

  # Coupyページ
  scope module: :page do
    root 'home#index'
    resources :keywords
    post '/callback', to: 'linebot#callback'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
