Rails.application.routes.draw do
  resources :games
  resources :manufacturers
  resources :helpholders
  resources :help_containers
  resources :helps
  resources :tasks
  resources :task_lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
