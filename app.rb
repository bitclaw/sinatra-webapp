require 'sinatra'
require './lib/tenis'

enable :sessions

get '/' do
  erb :index
end

post '/iniciar' do
  session["jugador1"] = params["jugador1"]
  session["jugador2"] = params["jugador2"]
  session["tenis"] = Tenis.new
  erb :juego
end

post '/anotar/:jugador' do
  session["tenis"].marcar params["jugador"]
  erb :juego
end
