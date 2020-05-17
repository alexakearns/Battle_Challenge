require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    'This page is working!'
  end

  run! if app_file == $0
end