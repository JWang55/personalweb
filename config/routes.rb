Rails.application.routes.draw do
  root to:'pages#home'
  get 'pages/contact'
  get 'pages/about'
  get 'articles/index'

  resources :articles do
    resources :comments, only: [:index, :create, :delete]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
