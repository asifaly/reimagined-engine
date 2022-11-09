# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  root 'welcome#index'
end
