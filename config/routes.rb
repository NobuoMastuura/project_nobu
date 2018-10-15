Rails.application.routes.draw do
  devise_for :users
  resources :profile_site, :only => :index

  root :to => 'profile_site#index'
  # プロフィールサイトへの遷移
  get 'profile_site/profile', to: 'profile_site#profile'
  get 'profile_site/work', to: 'profile_site#work'
  get 'profile_site/news', to: 'profile_site#news'

  # フォーチュンクッキー
  resources :fortune_cookie, :only => :index

  # タピスポ
  resources :tapispot
end
