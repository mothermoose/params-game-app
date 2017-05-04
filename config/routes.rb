Rails.application.routes.draw do
  get '/name' => 'games#game'
  get '/guess/:this_is_a_key' => 'games#guess'
end
