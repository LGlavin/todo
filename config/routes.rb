Todo::Application.routes.draw do
  root to: 'pages#home'
  resources :tasks
  resources :tasks, except: [:index]
end

