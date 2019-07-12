Rails.application.routes.draw do
  resources :mail_group, only: :index
  resources :posts
  get 'spam/show'
  get 'landing/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
