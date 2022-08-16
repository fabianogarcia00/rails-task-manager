# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# Defines the root path route ("/")
# root "articles#index"

Rails.application.routes.draw do
  # Read all tasks
  get 'tasks', to: 'tasks#index'

  # Create a task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # Read one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # Delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
end

#   # RESOURCES
#   # resources :restaurants, except: [:destroy]
#   # resources :restaurants, only: [:index, :show]
