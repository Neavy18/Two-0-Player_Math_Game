class Question
  def initialize
    @num1 = rand(1...20)
    @num2 = rand(1...20)
  end

  def sum
    "What is the sum of #{@num1} + #{@num2}?"
  end

  def total 
    @num1 + @num2
  end

end