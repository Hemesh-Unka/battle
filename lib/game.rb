class Game
  attr_reader :players, :current_player, :player1, :player2

  def initialize(p1, p2)
    @player1 = p1
    @player2 = p2
    @current_player = p2
    @players = [p2, p1]
  end

  def attack(player)
    player.receive_damage
  end

  def swap
    # reverse array and set current player as first value in array
    @current_player = players.reverse![0]
  end

  def game_over?
    true if @player1.hp <= 0 || @player2.hp <= 0
  end
end
