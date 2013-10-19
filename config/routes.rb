KimquyScreencast::Application.routes.draw do
  match "/signup", to: "gik_users#new", via: 'get'
  resources :gik_users
  # get "giktuts_users/create"
  # get "giktuts_users/confirm"
  # get "giktuts_users/edit"
  match "/signin", to: "sessions#new", via: 'get'
  match "/signout", to: "sessions#destroy", via: 'delete'
  resources :sessions, only: [:new, :create, :destroy, :current_user]
  get "video/show"
  devise_for :users
  root :to => "main#index"
  get "/team" => "main#team"
  get "/donggop" => "main#donggop"
  get "/library" => "main#library"

  resources :contacts, :only => [:new, :create] do
    get 'done', :on => :collection
  end

  get "/contacts" => "contacts#new"
end
