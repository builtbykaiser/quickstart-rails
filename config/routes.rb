require 'sidekiq/web'

Rails.application.routes.draw do
  get 'home/index'

  # authenticate :user, lambda { |u| u.admin? } do
   # mount Sidekiq::Web => '/sidekiq'
  # end

  root to: 'home#index'
end
