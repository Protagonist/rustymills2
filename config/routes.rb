Rails.application.routes.draw do
  get 'sessions/create'

  get 'sessions/destroy'

  get 'home/show'

  resources :comments
  devise_for :users
  get 'links/index'

  resources :links do
    member do
      get:delete
      put "like" ,   to: "links#upvote"
      put "dislike", to: "links#downvote"
    end
    resources :comments
  end

  root 'links#index'

  get 'links/show'

  get 'links/new'

  get 'links/create'

  get 'links/edit'

  get 'links/update'

  get 'links/delete'

  get 'links/destroy'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  root to: "home#show"  

end
