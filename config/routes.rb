# frozen_string_literal: true

Rails.application.routes.draw do
  resources :recipients, only: :show
  resources :mail_groups, only: %i[index show] do
    get :send_spam
  end

  resources :posts
  get 'spam/show'
  get 'landing/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
