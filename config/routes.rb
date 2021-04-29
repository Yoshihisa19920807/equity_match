Rails.application.routes.draw do
  devise_for :users
  ## Welcome page
  # get 'top/index'
  
  # root（トップページ「/」）に訪れた際にtopコントローラーのindexアクションを実行
  root 'top#index'

  resources :users, only: %i(index show)

  # reactionsコントローラーのcreateアクションのルーティングを追加
  resources :reactions, only: %i(create)
  
  # matchingコントローラのindexアクションのルーティングを追加
  resources :matching, only: %i(index)

  #chatコントローラのcreateとshowアクションのルーティングを追加
  resources :chat, only: %i(create show)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
