require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josiane")
player2 = Player.new("José")

puts "-"*50
puts "Voici l'état de chaque joueur :"
puts player1.show_state
puts player2.show_state
puts "-"*50
puts "IL EST VENU LE TEMPS DE LA BASTONNN !!!!"
puts "-"*50

while player1.life_points > 0 && player2.life_points > 0

  player1.attacks(player2)

  if player2.life_points <= 0 
    break
  end
  player2.attacks(player1)
  puts "-"*50
  puts "Voici l'état de chaque joueur :"
  player1.show_state
  player2.show_state
  puts "-"*50
end
puts "-"*50



