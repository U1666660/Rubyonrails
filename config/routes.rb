Rails.application.routes.draw do

  namespace :admin do
    get 'dashboard/index'
  end

get '/login' => 'admin/sessions#new'
get '/logout' => 'admin/sessions#destroy'

  namespace :admin do
    resources :posts
    resources :moderators, only: [:index, :edit, :update]
    resources :notifications, only: [:index, :destroy]
    resources :messages, only: [:index, :show, :update, :destroy]
    resources :visitors, only: [:index, :destroy]
    resources :tags, except: [:index]
    resources :comments, only: [:index, :update, :destroy]
    resources :sessions, only: [:new, :create, :destroy]

end

match 'dismiss_all_notifications', to: 'admin/notifications#delete_all', via: :delete



end
