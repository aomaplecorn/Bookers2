Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'devise/registrations',
                                    sessions: 'devise/sessions'}

  root to: "home#top", as: 'top'
  get 'home/about' => 'home#about',  as: 'about'

  resources :books, only: [:create,:index,:show,:edit,:update,:destroy]

  resources :users, only: [:index,:show,:edit,:update]


end
