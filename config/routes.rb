Forget::Engine.routes.draw do
  delete '/cache', to: 'cache#destroy'
end
