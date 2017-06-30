require 'sinatra'
require './config'
require './lib/picasyfijas.rb'

get '/' do
  erb(:picas)
end