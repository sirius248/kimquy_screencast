KimquyScreencast::Application.routes.draw do
  devise_for :users
  root :to => "main#index"
  get "/team" => "main#team"
  get "/donggop" => "main#donggop"
  get "/library" => "main#library"

  resources "contacts", only: [:new, :create]
end
