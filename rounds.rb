require "./match.rb"
require "./players.rb"
require "./questions.rb"

class Round 
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end

  def new_round
    new_q1 = Question.new
    new_q2 = Question.new

  puts "<---- NEW ROUND: #{@p1.username} ---->"
  puts "#{@p1.username} : #{new_q1.sum}" 

  result = gets.chomp.to_i

  if result == new_q1.total
    puts "You pass this round, you have #{@p1.lives} /3 left!"
  else
    puts "#{@p2.username} : Not even close!"
    puts "Nice try, but you lost a life! You have #{@p1.loss_lives} /3 lives left!"
  end

  puts "<---- NEW ROUND: #{@p2.username} ---->"
  puts "#{@p2.username} : #{new_q2.sum}" 

  result = gets.chomp.to_i

  if result == new_q2.total
    puts "You pass this round, you have #{@p2.lives} /3 left!"
  else
    puts "#{@p1.username} : Should of studied harder!"
    puts "Nice try, but you lost a life! You have #{@p2.loss_lives} /3 lives left!"
  end

  start = Match.new(@p1, @p2)
  start.play_game
  end
end

