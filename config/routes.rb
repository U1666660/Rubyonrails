Rails.application.routes.draw do
  namespace :admin do
    resources :moderators, only: [:show, :edit, :update]
end
end
