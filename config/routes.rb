
Rails.application.routes.draw do  
  resources :sliders

  resources :news
  get 'friends/new'
  resources :mailbox   
  resources :friends  
  resources :contacts 
  resources :categories do
    resources :bibles do
      resources :chapters
    end
end
  resources :audios 
  resources :albums do
    resources :audios  
  end
  resources :daily_breads
  resources :videos
  root 'welcome#index'
  get 'welcome/index'
  # devise_for :admins  
  devise_for :admins, path: "admin", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 
end
