Rails.application.routes.draw do

  resources :tests
  post '/courses4_search', to: 'document4#search'
  post'/document4', to: 'document4#search'
  post '/courses2_search', to: 'document2#search'
  post'/document2', to: 'document2#search'

  get '/login',  to: 'session#new'
  post '/login',  to: 'session#create'
  delete '/login',  to: 'session#destroy'
  get '/document8', to: 'document8#top'
  get '/document7', to: 'document7#top'
  get '/document6', to: 'document6#top'
  get '/document5', to: 'document5#top'
  delete '/logout',  to: 'session#destroy'
  get '/document4', to: 'document4#top'
  get '/document3', to: 'document3#top'
  get '/document2', to: 'document2#top'
  get '/document', to: 'document#top'
  get '/guidance', to: 'guidance#top'
  get '/talk', to: 'talk#top'
  get '/board3', to: 'board3#top'
  get '/board2', to: 'board2#top'
  get '/board', to: 'board#top'
  get '/', to: 'home#top'
end