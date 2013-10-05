KimquyScreencast::Application.routes.draw do
  devise_for :users
  root :to => "main#index"
  get "/team" => "main#team"
  get "/donggop" => "main#donggop"
  get "/library" => "main#library"

  match "contact" => "contact#new", as: "contact", via: :get
end
