#require 'bundler'
#Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("José")
player2 = Player.new("Josiane")

# J'affiche l'état de chaque joueur avec la méthode show_state
puts "Voici l'état de chaque joueur :"
puts "#{player1.show_state}"
puts "#{player2.show_state}"

# Je créé une boucle while qui indique que tant que les points de vie du joueur 1 ou 2 ne sont pas égal à 0 je continue d'alterner les tours d'attaque.
# Si player1 meurt (life_points <= 0) alors on arrête le programme avec break
while player1.life_points > 0 && player2.life_points > 0
  puts "Passons à la phase d'attaque"
  puts player2.attacks(player1)
    if player1.life_points <= 0 #si player1 meurt on arrête le programme
      break
    else
      puts "Voici l'état de chaque joueur :"
      puts player1.show_state
      puts player2.show_state

      puts "Passons à la phase d'attaque"
      puts player1.attacks(player2)

      puts "Voici l'état de chaque joueur :"
      puts player2.show_state
      puts player1.show_state
    end
end


#binding.pry
