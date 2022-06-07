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

  scope module: :public do
    resource :members, only: [] do
      get "my_page" => "members#show"
      get "my_page/edit" => "members#edit"
      patch "my_page/update" => "members#update"
      get "unsubscribe" => "members#unsubscribe"
      patch "withdraw" => "members#withdraw"
    end

    resources :onsens, only: [:index, :show]
  end

  namespace :admin do
    resources :members, only: [:index, :show, :edit, :update]
    resources :onsens
    resources :tags, only: [:index, :create, :edit, :update]
  end
end
