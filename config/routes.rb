Rails.application.routes.draw do

  root 'messages#index'

  get 'messages/index'
  post 'messages/create'
  resources :messages

end
