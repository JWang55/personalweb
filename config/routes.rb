Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/create'
  get 'comments/delete'
  get 'visitors/new'
  get 'visitors/create'
  get 'visitors/new'
  get 'users/create'
  root to: 'pages#home'
  get 'pages/contact'
  get 'pages/about'
  get 'articles/index'

  resources :articles do
    resources :comments, only: [:create, :delete]
  end
  resources :visitors, only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
