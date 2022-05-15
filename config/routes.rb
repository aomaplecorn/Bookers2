Rails.application.routes.draw do


  devise_for :users

  root to: "home#top", as: 'top'
  get 'home/about' => 'home#about',  as: 'about'





end
