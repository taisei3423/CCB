Rails.application.routes.draw do
  get '/login',  to: 'session#new'
  post '/login',  to: 'session#create'
  delete '/login',  to: 'session#destroy'

  get '/board', to: 'board#top'
  get '/', to: 'home#top'
end