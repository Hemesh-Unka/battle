class Game
  attr_reader :players, :current_player, :player1, :player2

  def initialize(p1, p2)
    @player1 = p1
    @player2 = p2
    @current_player = p2
  end

  def attack(player)
    player.receive_damage
  end

  def swap
    # reverse array and set current player as first value in array
    @current_player = [@player2, @player1].reverse![0]
  end

end
