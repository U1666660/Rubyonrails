Rails.application.routes.draw do
  namespace :admin do
    resource :moderators, only: [:show, :edit, :update]
end
end
