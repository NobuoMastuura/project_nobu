Rails.application.routes.draw do

  root :to => 'profile_site#index'
  resources :profile_site, :only => :index

  # プロフィールサイトへの遷移
  get 'profile_site/profile', to: 'profile_site#profile'
  get 'profile_site/work', to: 'profile_site#work'
  get 'profile_site/news', to: 'profile_site#news'

  # フォーチュンクッキー
  resources :fortune_cookie, :only => :index

  # タピスポット
  resources :tapispot
  # ユーザー登録機能
  devise_for :users, path:'tapispot/users'
end
