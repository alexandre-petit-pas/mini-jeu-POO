class Player
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
    player1.name + "a" + player1.life_points + "points de vie"
  end
end
