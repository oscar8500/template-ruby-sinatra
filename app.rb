require 'sinatra'
require './config'
require './lib/picasyfijas.rb'

get '/' do
  erb(:picas)
end

post '/juego' do
  numero = params["numeroIngresado"].to_i
  picas = Picasyfijas.new(numero)
  arrespuesta=picas.revisaPicasYFijas
  @respuesta = arrespuesta[0]
  @fijas = arrespuesta[1]
  @picas = arrespuesta[2]

  erb(:picas)
end