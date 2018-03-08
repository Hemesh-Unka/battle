require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    erb(:play)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:p1_name]), Player.new(params[:p2_name]))
    redirect '/play'
  end

  post '/attack' do
    p params
    $game.attack($game.current_player)
    $game.swap
    redirect '/play'
  end

  run! if app_file == $0
end
