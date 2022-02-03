require "./players.rb"
require "./questions.rb"
require "./rounds.rb"

class Match
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end

  def first_round
    players = [@p1, @p2]
    first = players.sample
    second = players - [first]
    second = second[0]
    
    new_round = Round.new(first, second)
    new_round.new_round
  end
  
  def play_game 
    if @p1.lives == 0 
      puts "#{@p2.username} WINS!"

    elsif @p2.lives == 0
      puts "#{@p1.username} WINS!"
    
    else new_round = Round.new(@p1, @p2)
      new_round.new_round
    end
  end

end

