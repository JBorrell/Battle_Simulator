require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/attack'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.switch_turn
    erb(:attack)
  end

  get '/basic_attack' do
    @game = $game
    basic = Attack.new
    basic.basic_attack(@game.opponent)
    basic.effects(@game.turn)
    redirect '/attack'
  end

  get '/poison' do
    @game = $game
    poison = Attack.new
    poison.poison_attack(@game.opponent)
    poison.effects(@game.turn)
    redirect '/attack'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
