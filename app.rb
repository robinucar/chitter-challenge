require 'sinatra/base'
require 'sinatra/reloader'
require './lib/messages'

class Chitter < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  # routes 

  get '/' do
    # p ENV
    @messages = Messages.all
    erb :index

  end

  run if app_file == $0
end
