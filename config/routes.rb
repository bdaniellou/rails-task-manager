Rails.application.routes.draw do
  #READ ALL
  get 'tasks', to: 'tasks#index'
  #CREATE TASK
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  #READ ONE
  get 'tasks/:id', to: 'tasks#show', as: :task

  #UPDATE TASK
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'
  #DELETE TASK
  delete "tasks/:id", to: 'tasks#destroy', as: :delete
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
