Rails.application.routes.draw do

  devise_for :users

  root to: "home#top", as: 'top'
  get 'home/about' => 'home#about',  as: 'about'

  resources :books, only: [:create,:index,:show,:edit]

  resources :users, only: [:index,:show,:edit]


end
