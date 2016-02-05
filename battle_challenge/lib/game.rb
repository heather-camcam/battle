require_relative 'player'

class Game

  attr_reader :turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    @turn = opponent
  end

  def opponent
    player_1 == turn ? player_2 : player_1
  end

  def lost?
    player_1.dead? || player_2.dead?
  end

  def losing_player
    @players.select {|player| player.dead?}.pop
  end

end
