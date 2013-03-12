class WordProblem

  attr_reader :num1, :num2, :question

  def initialize(question)
    @question = question

    numbers = question.scan(/\-?\d+/)
    @num1 = numbers[0].to_i
    @num2 = numbers[1].to_i

  end

  def answer

    calculate
  end

  def actions
    [ MathAction.new("plus",:+), MathAction.new("minus",:-),
      MathAction.new("multiplied",:*), UnknownAction.new ]
  end

  def calculate
    found_action = actions.find { |action| action.qualify?(question) }
    found_action.action([@num1,@num2])

    # if question.include?("plus")
    #   @num1 + @num2
    # elsif question.include?("minus")
    #   @num1 - @num2
    # elsif question.include?("multiplied")
    #   @num1 * @num2
    # elsif question.include?("divided")
    #   @num1 / @num2
    # else
    #   raise ArgumentError
    # end
  end

end

class MathAction
  attr_reader :operation_word, :operation

  def initialize(operation_word,operation)
    @operation_word = operation_word
    @operation = operation
  end

  def qualify?(input)
    input.include?(operation_word)
  end

  def action(numbers)
    numbers.first.send(operation,numbers.last)
  end
end


class PlusAction

  def qualify?(input)
    input.include?("plus")
  end

  def action(numbers)
    numbers.first + numbers.last
  end
end

class SubtractAction

  def qualify?(input)
    input.include?("minus")
  end

  def action(numbers)
    numbers.first - numbers.last
  end
end

class UnknownAction
  def qualify?(input)
    true
  end

  def action(numbers)
    raise ArgumentError
  end
end

puts WordProblem.new('What is 1 plus 1?').answer