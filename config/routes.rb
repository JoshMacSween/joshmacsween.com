# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#home'
  resources :pages

  get 'portfolio', to: 'pages#portfolio', as: :portfolio
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
end
