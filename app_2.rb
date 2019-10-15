# require 'bundler'
# Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("José")
player2 = Player.new("Josiane")

#binding.pry
puts " Bienvenue dans
╔═╗╔═╗╔═╗  ╔═╗╦ ╦╦═╗╦  ╦╦╦  ╦╔═╗╦═╗
╠═╝║ ║║ ║  ╚═╗║ ║╠╦╝╚╗╔╝║╚╗╔╝║ ║╠╦╝
╩  ╚═╝╚═╝  ╚═╝╚═╝╩╚═ ╚╝ ╩ ╚╝ ╚═╝╩╚═
Le but du jeu est d'être le dernier survivant !
"
puts "Quel est ton prénom ?"
user = gets.chomp
user1 = HumanPlayer.new(user)

enemies = [player1, player2]

while user1.life_points > 0 && (player1.life_points > 0 || player2.life_points >0)
  puts "Voici l'état de chaque joueur :"
  puts "#{player1.show_state}"
  puts "#{player2.show_state}"
  puts "#{user1.show_state}"

  puts "Quelle action veux-tu effectuer ?"
  puts "a - Chercher une meilleure arme"
  puts "s - Chercher à se soigner"
  puts "Attaquer un joueur en vue :"
  puts "0 : #{player2.show_state}"
  puts "1 : #{player1.show_state}"

  choice = gets.chomp
  case choice
    when 'a'
      user1.search_weapon
    when "s"
      user1.search_health_pack
    when "0"
      user1.attacks(player2)
    when "1"
      user1.attacks(player1)
    else
      puts "Tu n'as pas rentré une valeur valide"
  end

  puts "Les autres joueurs t'attaquent !"

  enemies.each { |enemy|
    if enemy.life_points > 0
      enemy.attacks(user1)
    end
  }
end
puts "La partie est finie"

if user1.life_points > 0
  puts "Vous êtes le nouveau champion d'Apex... pardon ... de Poo Survivor ! Bravo !"
else
  puts "Espèce de looser, tu as perdu !"
end
