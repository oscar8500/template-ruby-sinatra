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
  ##arrespuesta = ["El número ingresado es el correcto","El número de fijas es 4"]
  @respuesta = arrespuesta[0]
  @fijas = arrespuesta[1]

  erb(:picas)
end