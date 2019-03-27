Rails.application.routes.draw do
  
  resources :notifications
  devise_scope :user do
  get 'signup', to: 'devise/registrations#new'
end
  
  devise_scope :user do
  get 'login', to: 'devise/sessions#new'
end


  resources :patients do
    resources :patientnotes
  end
  
  devise_for :users, :controllers => {:registrations => "registrations"}
  root to: 'pages#index'
  
end
