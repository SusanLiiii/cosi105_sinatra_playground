require 'sinatra'
require 'sinatra/activerecord'
require './models/user'


get '/' do
  'Hello Sinatra!'
end