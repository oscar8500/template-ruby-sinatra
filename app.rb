require 'sinatra'
require './config'
require './lib/picasyfijas.rb'

get '/' do
  erb(:picas)
end

post '/juego' do
  numero = params["numeroIngresado"]
  picas = Picasyfijas.new(numero)
  session["historial"] = session["historial"].to_s+" "+numero.to_s
  arrespuesta=picas.revisaPicasYFijas
  @respuesta = arrespuesta[0]
  @fijas = arrespuesta[1]
  @picas = arrespuesta[2]

  erb(:picas)
end