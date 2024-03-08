Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  #==================削除orコメントアウト================
  # get 'favorites/create'
  # get 'favorites/destroy'
  #=====================================
  root 'tweets#index'
  devise_for :users

  # ================ここをネスト(入れ子)した形に変更
  resources :tweets do
    resource :favorites, only: [:create, :destroy]
  end
  #======================================

  resources :users

end
