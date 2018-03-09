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
    @game = Game.create(Player.new(params[:p1_name]), Player.new(params[:p2_name]))
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
