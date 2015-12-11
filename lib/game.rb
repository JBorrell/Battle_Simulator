class Game

  attr_reader :player_1, :player_2, :turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = player_2
  end

  def attack(player)
    player.deduct_hp
  end

  def switch_turn
    turn == player_1 ? @turn = player_2 : @turn = player_1
    @player_1.healed = 0
    @player_2.healed = 0
  end

  def opponent
    turn == player_1 ? player_2 : player_1
  end

  private


end
