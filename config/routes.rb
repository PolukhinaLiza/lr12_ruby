Rails.application.routes.draw do
  root 'index#input'
  get 'index/input'
  get 'index/output'
  get 'session/login'
  post 'session/create'
  get 'session/logout'
  resources :users
 
end
