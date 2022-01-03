class Question
  attr_reader :answer

  def initialize
    @num1 = rand 1..20
    @num2 = rand 1..20
  end

  def the_question
    "What does #{@num1} plus #{@num2} equal?"
  end

  def the_answer(answer)
    answer  == @num1 + @num2
  end


end
