class WordProblem

  # refactor with send!!!!

  attr_reader :num1, :num2, :num3, :question

  def initialize(question)
    @question = question

    numbers = @question.scan(/\-?\d+/)
    operators = @question.split(" ")

    @op1 = operators[3]
    @op2 = operators[5]

    @num1 = numbers[0].to_i
    @num2 = numbers[1].to_i
    @num3 = numbers[2].to_i
  end

  def answer
    calculate
  end

  def get_operation
    case operation
    when "plus"
      :+
    else
      :-
    end
  end

  def calculate
    if question.include?("plus")
      @num1 + @num2
    elsif question.include?("minus")
      @num1 - @num2
    end
  end
end