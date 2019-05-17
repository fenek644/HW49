Rails.application.routes.draw do
  root to: "pages#home"
  get 'home' => 'pages#home'


  resources :links do
   resource :comments, module: :links
  end
  resources :images do
    resource :comments, module: :images
  end
  resources :posts do
    resource :comments, module: :posts
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
