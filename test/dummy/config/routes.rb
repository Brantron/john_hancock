Dummy::Application.routes.draw do
  root to: 'users#new'
  resources :users, only: [:new, :create, :show]
end
