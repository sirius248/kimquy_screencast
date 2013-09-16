KimquyScreencast::Application.routes.draw do
  devise_for :users
  root :to => "main#index"
  get "/team" => "main#team"
  get "/about" => "main#about"
  get "/donggop" => "main#donggop"
  get "/library" => "main#library"
end
