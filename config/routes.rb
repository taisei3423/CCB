Rails.application.routes.draw do
  resources :boards
  get '/login',  to: 'session#new'
  post '/login',  to: 'session#create'
  delete '/login',  to: 'session#destroy'
  get '/document4', to: 'document4#top'
  get '/document3', to: 'document3#top'
  get '/guidance', to: 'guidance#top'
  get '/talk', to: 'talk#top'
  get '/board3', to: 'board3#top'
  get '/board2', to: 'board2#top'
  get '/document2', to: 'document2#top'
  get '/document', to: 'document#top'
  get '/board', to: 'board#top'
  get '/', to: 'home#top'
end