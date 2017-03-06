Rails.application.routes.draw do
  get '/set', to: 'index#set'
  get '/get', to: 'index#get',defaults: {format:'text'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
