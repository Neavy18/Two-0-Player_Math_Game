require "./match.rb"
require "./players.rb"
require "./questions.rb"
require "./rounds.rb"

print "Player 1, choose a username : "
n1 = gets.chomp
p1 = Player.new(n1)

print "Player 2, choose a username : "
n2 = gets.chomp
p2 = Player.new(n2)

new_match = Match.new(p1, p2)

new_match.first_round