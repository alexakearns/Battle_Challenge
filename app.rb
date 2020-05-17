require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    'Let the battle commence'
  end

  run! if app_file == $0
end