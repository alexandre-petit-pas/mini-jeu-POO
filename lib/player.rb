require 'pry'

class Player
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
    return "#{name} a #{@life_points} points de vie"
  end

  def gets_damage(shot)
    @life_points -= shot
    if @life_points <= 0
      return "#{name} a été tué !"
    end
  end

  def attacks(target)
    puts "#{@name} attaque #{target.name}"
    attaque = compute_damage
    puts "#{@name} lui inflige #{attaque} points de dégât"
    target.gets_damage(attaque)
  end

  def compute_damage
    return rand(1..6)
  end

end

player1 = Player.new("José")
player2 = Player.new("Josiane")


#binding.pry
