Forget::Engine.routes.draw do
  delete '/cache', to: 'cache#destroy'
  get '/cache/new', to: 'cache#new'
end
