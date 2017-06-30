require 'sinatra'
require './config'
require './lib/picasyfijas.rb'

get '/' do
  erb(:picas)
end

post '/juego' do
  numero = params["numeroIngresado"].to_i
  picas = Picasyfijas.new(numero)
  @respuesta=picas.revisaPicasYFijas
  erb(:picas)
end