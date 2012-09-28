Blogger::Application.routes.draw do
  resources :authors

  get "tags/index"

  get "tags/show"

  resources :comments
  resources :articles
  resources :tags
  resources :author_sessions

  root :to => 'articles#index'

  match 'login' => 'author_sessions#new',     :as => :login
  match 'login' => 'author_sessions#destroy', :as => :logout

end
