Rails.application.routes.draw do
  get 'login' => 'login#index', as: :login

  post 'login' => 'login#authenticate', as: :authenticate

  get 'logout' => 'login#logout', as: :logout

  get '/' => 'home#index', as: :home

  root 'home#index'

  resources :users
  resources :tasks
  resources :task_lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
