require 'sinatra'
require './lib/pokemon'

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

get '/cargarFacil' do
  pokemon = Pokemon.new
  # session["pokemon"] = pokemon.cargarRejillaFacil
  session[:images] ||= ['images/three/bulbasaur/bulbasaur.jpg']
  # session["images"] = 'images/three/bulbasaur/bulbasaur.jpg'
  # session["images"] = 'images/three/ivysaur/ivysaur.jpg'
  # session["images"] = 'images/three/venusaur/venusaur.jpg'
  erb :cargar_facil
end
