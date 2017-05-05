Rails.application.routes.draw do
  get '/name' => 'games#game'
  get '/guess/:this_is_a_key' => 'games#guess'

  get '/form_show_params' => 'games#form_show'
  post '/form_send_params' => 'games#form_send'
end
