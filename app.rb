require 'sinatra'
require './config'

get '/' do
  erb(:picas)
end