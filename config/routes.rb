Rails.application.routes.draw do

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  devise_for :members, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  root to: "public/homes#top"
  get "public/homes/about"

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

  scope module: :public do
    resource :members, only: [] do
      get "my_page" => "members#show"
      get "my_page/edit" => "members#edit"
      patch "my_page/update" => "members#update"
      get "unsubscribe" => "members#unsubscribe"
      patch "withdraw" => "members#withdraw"
    end
    get "search_tag" => "onsens#search_tag" # タグの検索で使用する
    resources :onsens, only: [:index, :show]
  end

  namespace :admin do
    get "search_tag"=>"onsens#search_tag"
    resources :members, only: [:index, :show, :edit, :update]
    resources :onsens
    resources :tags, only: [:index, :create, :edit, :update]
  end
end
