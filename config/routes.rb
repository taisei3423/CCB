Rails.application.routes.draw do
  get '/guidance', to: 'guidance#top'
  get '/board3', to: 'board3#top'
  get '/board2', to: 'board2#top'
  get '/document2', to: 'document2#top'
  get '/document', to: 'document#top'
  get '/board', to: 'board#top'
  get '/', to: 'home#top'
end
