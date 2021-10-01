Rails.application.routes.draw do
  get '/document2', to: 'document2#top'
  get '/document', to: 'document#top'
  get '/board', to: 'board#top'
  get '/', to: 'home#top'
end
