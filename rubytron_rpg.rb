require 'sinatra'
# Base Classes
require_relative 'models/base_action.rb'
require_relative 'models/base_entity.rb'
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/models/*.rb'].each {|file| require file }
# Dir[File.dirname(__FILE__) + '/controllers/*.rb'].each {|file| require file }


get '/' do
  erb :index
end
