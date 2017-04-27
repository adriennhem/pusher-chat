Rails.application.routes.draw do
  get 'chat_messages/index'

  resources :messages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'chat_messages#index'
  
  resources :chat_messages, only: [:create]

end
