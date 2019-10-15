# mini_jeu_poo

### PROJET EFFECTUÉ EN BINOME ###

## MOUSSAILLON 1 : ALEXANDRE PETIT-PAS (PSEUDO SLACK @Alexandre Petit-Pas) / alexandre.petitpas25@gmail.com ##

## MOUSSAILLON 2 : JULIETTE PETIT-PAS (PSEUDO SLACK @julietteptps) / petitpasjuliette@gmail.com ##

# Version1.0 #

Nous avons commencé par creer une classe "Player" et nous leurs avons donné des attributs (points de vies, noms)

Puis nous avons rajouté une commande afin de voir les points de vies des joueurs (show state)

Puis, dans la suite logique, une commande capable de subir des dégats (gets dommage)

Il doit également être possible pour les joueurs d'attaquer. Nous avons alors ajouté la commande "attacks" qui va permettre a un joueur d'attaquer l'autre joueur. (player1.attacks(player2))

Le combat doit s'arréter quand les points de vies d'un joueur tombe à 0. 

Et enfin, nous allons orchestrer le combat afin que le match se déroule jusqu'a ce que un joueur meurt au combat.

# Version2.0 #

Nous avons créer comme demandé un deuxième type de joueur (HumanPlayer) qui a deux avantages à contrario du player lambda : 

- Il possède 100 points de vies

- Il possède une arme amélioré qui augmentera les dégats contre son adversaire (weapon_level)

Les "players" taperont uniquement des dégats compris entre 1 et 6 alors que les HumanPlayer tapent eux 1..6 x weapon level

De plus les HumanPlayers ont la possibilité de trouver des packs de vies (50+ de points de vies si le dé est compris entre 2 et 5, et 80+ de points de vies si le dé atteint 6)
