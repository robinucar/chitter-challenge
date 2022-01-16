require 'sinatra/base'
require 'sinatra/reloader'
require './lib/message'
require 'pg'

class Chitter < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  # routes 

  get '/messages' do
    # p ENV
    @messages = Message.all
    erb :"messages/index"

  end

  get '/messages/new' do
    erb :"messages/new"
  end

  post '/messages' do
    Message.create(params[:message])
    redirect('/messages')
  end

  run if app_file == $0
end
