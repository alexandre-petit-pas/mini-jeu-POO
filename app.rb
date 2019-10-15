#require 'bundler'
#Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("José")
player2 = Player.new("Josiane")

puts "Voici l'état de chaque joueur :"
puts "#{player1.show_state}"
puts "#{player2.show_state}"


while player1.life_points > 0 && player2.life_points > 0
  puts "Passons à la phase d'attaque"
  puts player2.attacks(player1)
    if player1.life_points <= 0
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
