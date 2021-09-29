Rails.application.routes.draw do
  get '/board', to: 'board#top'
  #get 'home/top'
  get '/', to: 'home#top'
end
