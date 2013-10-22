KimquyScreencast::Application.routes.draw do
  get "reminders/reminder_done"
  match "/signup", to: "gik_users#new", via: 'get'
  resources :gik_users
  resources :sessions, only: [:new, :create, :destroy, :current_user]
  get "video/show"
  root :to => "main#index"
  get "/team" => "main#team"
  get "/donggop" => "main#donggop"
  get "/library" => "main#library"

  resources :contacts, :only => [:new, :create] do
    get 'done', :on => :collection
  end

  match "/signin", to: "gik_users#signin", via: [:post, :get]
  match "/signout", to: "gik_users#signout", via: [:post, :get, :delete]
  get "/contacts" => "contacts#new"

  match "/reminder", to: "reminders#reminder_done", via: [:post, :get]
  match "/resetpassword", to: "reminders#reset_pass", via: [:post, :get]
  match "/resetpassword1", to: "reminders#compare", via: [:post, :get]
end
