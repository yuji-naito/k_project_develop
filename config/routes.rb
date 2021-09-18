Rails.application.routes.draw do
  #--- フロント
  scope module: :front do
    # ログイン/ログアウト
    get :login, to: 'sessions#new'
    post :login, to: 'sessions#create'
    delete :signout, to: 'sessions#destroy'

    # ホーム
    root 'home#show'

    resource :users, only: [:edit]
  end
end
