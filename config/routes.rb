Blogging::Application.routes.draw do

  authenticated :user do
    root :to => 'home#index'
  end
  mount Blogit::Engine => "/blog"
  root :to => "home#index"
  devise_for :users
  resources :users


end