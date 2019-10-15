require 'pry'

class Player
  attr_accessor :name, :life_points

  def initialize(name) #je créé une méthode qui indique à quoi correspond la variable @name et j'indique que la variable @liffe_points est égale à 10
    @name = name
    @life_points = 10
  end

  def show_state # méthode qui indique le nombre de point de vie d'un joueur
    if @life_points <= 0
      return "#{name} est decédé(e)"
    end
    return "#{name} a #{@life_points} points de vie"
  end

  def gets_damage(shot) #méthode qui calcule le nombre de point de vie restant
    @life_points -= shot
    if @life_points <= 0 #ici j'indique que le joueur à été tué si le nombre de point de vie est inférieur ou égal à 0
      puts "#{name} a été tué !"
    end
  end

  def attacks(target) #méthode qui indique qu'un joueur en attaque un autre
    puts "#{@name} attaque #{target.name}"
    attaque = compute_damage #les points de dégâts sont définis dans la méthode compute_damage
    puts "#{@name} lui inflige #{attaque} points de dégât"
    target.gets_damage(attaque)
  end

  def compute_damage #méthode qui tire un nombre de dégât au hasard entre 1 et 6
    return rand(1..6)
  end

end

class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(name)
    super(name) #fait appel au initialize de la classe Player
    @life_points = 100 # j'ai rajouté cette ligne
    @weapon_level = 1
  end

  def show_state # méthode qui indique le nombre de point de vie d'un joueur
    return "#{name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
  end

  def compute_damage
    rand(1..6) * @weapon_level
  end

  def search_weapon
    result_de = rand(1..6)
    puts "Tu as trouvé une arme de niveau #{result_de}"
    if result_de > @weapon_level
      @weapon_level = result_de
      puts "Youhou ! Ton arme est grave lourde et bien mieux qu'avant : tu la prends !"
    else
      puts "Holy shit ! Tu ne gagnes rien à prendre cette daube, tu gardes ton arme actuelle"
    end
  end

  def search_health_pack
    result_de = rand(1..6)
    if result_de == 1
      puts "Mince, tu n'as rien trouvé !"
    end

    if result_de == (2..5)
      puts "Bravo ! Tu as trouvé un pack de +50 points de vie"
    elsif @life_points > 50
      puts "Dommage tu ne peux pas prendre ce pack, tu as trop de points de vie"
    else
      @life_points = @life_points + 50
    end

    if result_de == 6
      puts "Wahou ! Tu as trouvé un méga pack de +80 points de vie"
    elsif @life_points > 20
      puts "Dommage tu ne peux pas prendre ce pack, tu as trop de points de vie"
    else
      @life_points = @life_points + 80
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


binding.pry
