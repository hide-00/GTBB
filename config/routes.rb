Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'hello/index' => 'hello#index'
  get 'hello/link' => 'hello#link'
  root 'hello#index'
  get 'boards' => 'boards#index'
  get 'boards/new' => 'boards#new'
  post 'boards' => 'boards#create'
  get 'boards/:id' => 'boards#show',as: 'board'
  patch 'boards/:id' => 'boards#update'
  delete 'boards/:id' => 'boards#destroy'
  get 'boards/:id/edit' => 'boards#edit', as:'edit_board'
end
