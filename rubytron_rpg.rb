require 'sinatra'
require_relative 'lib/rubytron/controller'

get '/' do
  erb :index
end
