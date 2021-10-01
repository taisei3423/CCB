Rails.application.routes.draw do
  get 'session/new'
  get '/board', to: 'board#top'
  #get 'home/top'
  get '/', to: 'home#top'
end
