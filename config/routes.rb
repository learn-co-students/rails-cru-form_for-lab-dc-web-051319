# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs, only: %i[index show new create edit update]
  resources :artists, only: %i[index show new create edit update]
  resources :genres, only: %i[index show new create edit update]
end
