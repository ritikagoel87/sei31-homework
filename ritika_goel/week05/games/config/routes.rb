Rails.application.routes.draw do
  root :to => 'home#index'

  get '/magic' => 'magic#home'
  get '/magic/result' => 'magic#result'

  get '/secret' => 'secret#home'
  get '/secret/:result' => 'secret#result'

  get '/rock' => 'rock#home'
  get '/rock/:throw' => 'rock#rock_play'
end
