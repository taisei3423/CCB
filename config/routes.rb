Rails.application.routes.draw do
  get '/board3', to: 'board3#top'
  get '/board2', to: 'board2#top'
  get '/board', to: 'board#top'
  #get 'home/top'
  get '/', to: 'home#top'
end
