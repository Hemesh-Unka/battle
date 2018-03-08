class Game
  attr_reader :player1, :player2, :players, :current_player

  def initialize(p1, p2)
    @player1 = p1
    @player2 = p2

    @players = [@player1, @player2]
    @current_player = @player1
  end

  def attack(player)
    player.receive_damage
  end

  def swap
    # reverse array and set current player as first value in array
    @current_player = @players.reverse![0]
  end
end
