require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  get '/play' do
    erb(:play)
  end

  post '/names' do
    p1 = Player.new(params[:p1_name])
    p2 = Player.new(params[:p2_name])
    @game = Game.create(p1, p2)
    redirect '/play'
  end

  get '/swap_players' do
    @game.swap
    redirect '/play'
  end

  post '/attack' do
    @game.attack(@game.current_player)
    redirect '/swap_players'
  end

  run! if app_file == $0
end
