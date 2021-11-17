Rails.application.routes.draw do

  resources :testguides
  resources :schedules
  resources :submissions
  resources :tests

  patch '/user_update', to: 'user#update'
  get '/user_top', to: 'user#top'
  post '/courses4_search', to: 'document4#search'
  post'/document4', to: 'document4#search'
  post '/courses5_search', to: 'document5#search'
  post'/document5', to: 'document5#search'
  post '/courses7_search', to: 'document7#search'
  post'/document7', to: 'document7#search'
  post '/courses2_search', to: 'document2#search'
  get '/document2_search', to: 'document2#search'
  post '/document2', to:'document2#search'
  post '/courses_search', to: 'document#search'
  post '/document', to: 'document#search'
  get '/document_edit', to: 'document#edit'
  post '/document_update', to: 'document#update'

  get '/login',  to: 'session#new'
  post '/login',  to: 'session#create'
  delete '/login',  to: 'session#destroy'
  get '/document9', to: 'document9#top'
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