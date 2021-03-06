Rails.application.routes.draw do
  
  resources :notifications do
    collection do
    get 'remove_all'
  end
end
  
  
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
  
get '/news' => 'news#index'  
  
end
