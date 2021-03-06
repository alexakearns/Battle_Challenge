require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/game' do
    @game = $game
    erb :game
  end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    @game = $game
    @game.attack(@game.player_2)
    erb :attack
  end

  run! if app_file == $BATTLE
end
