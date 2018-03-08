require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player1 = session['player1']
    @player2 = session['player2']

    erb(:play)
  end

  post '/names' do
    @player1 = params[:player1_name]
    @player2 = params[:player2_name]

    session['player1'] = @player1
    session['player2'] = @player2
    redirect '/play'
  end

  run! if app_file == $0
end
