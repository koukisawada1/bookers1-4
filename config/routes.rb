Rails.application.routes.draw do
  root 'home#top'
  get 'home/about' => 'home#about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books

  get 'follower_index/:id' => 'relationships#follower_index', as: 'follower_index'
  get 'followed_index/:id' => 'relationships#followed_index', as: 'followed_index'
  post 'follow/:id' => 'relationships#create', as: 'follow' # フォローする
  post 'unfollow/:id' => 'relationships#destroy', as: 'unfollow' # フォロー外す

end