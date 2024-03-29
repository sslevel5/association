Rails.application.routes.draw do
  
  #==================削除orコメントアウト================
  # get 'relationships/create'
  # get 'relationships/destroy'
  #=====================================
  root 'tweets#index' 

  devise_for :users

  resources :tweets do
    resource :favorites, only: [:create, :destroy]
  end

  # ================ここをネスト(入れ子)した形に変更
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member # 追加
    get :followers, on: :member # 追加
  end
  #======================================

end
