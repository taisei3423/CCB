Rails.application.routes.draw do
<<<<<<< HEAD
  get 'session/new'
=======
  get '/guidance', to: 'guidance#top'
  get '/talk', to: 'talk#top'
  get '/board3', to: 'board3#top'
  get '/board2', to: 'board2#top'
  get '/document2', to: 'document2#top'
  get '/document', to: 'document#top'
>>>>>>> 746f1983502c96dc0f03e517384637fdb4691e46
  get '/board', to: 'board#top'
  get '/', to: 'home#top'
end
