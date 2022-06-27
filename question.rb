class Question

  attr_accessor :ask_question

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  def ask_question(player)
    "#{player}: What does #{@number1} plus #{@number2} equal?"
  end

  def check_answer(input)
    input == @answer
  end

end


question = Question.new
puts question.ask_question('Player 1')
