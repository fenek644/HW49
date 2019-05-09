Rails.application.routes.draw do
  root to: "pages#home"
  get 'home' => 'pages#home'

  resources :comments
  resources :links
  resources :images
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
