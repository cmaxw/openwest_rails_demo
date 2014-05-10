Rails.application.routes.draw do


  devise_for :users
  post 'comments/create', as: :comments

  get 'comments/edit'

  get 'comments/update'

  get 'comments/destroy'

  resources :comments, only: [:create, :edit, :update, :destroy]

  resources :posts

  root to: "posts#index"
end
