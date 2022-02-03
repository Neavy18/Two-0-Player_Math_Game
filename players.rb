class Player 
  attr_reader :username
  attr_accessor :lives

  def initialize(username)
    @username = username
    @lives = 3
  end
  
  def loss_lives
    @lives = @lives - 1
  end
end