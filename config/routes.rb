Rails.application.routes.draw do
  resources :profile_site, :only => :index

  root :to => 'profile_site#index'
  # プロフィールサイトへの遷移
  get 'profile_site/profile', to: 'profile_site#profile'
  get 'profile_site/product', to: 'profile_site#product'
  get 'profile_site/news', to: 'profile_site#news'

end
