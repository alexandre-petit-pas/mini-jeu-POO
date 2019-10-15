class Player
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
    return "#{name} a #{life_points} points de vie"
  end

  def gets_damage(damage_number)
    @life_points -= damage_number
    if life_points <= 0
      return "#{name} a été tué !"
    end
  end

end
