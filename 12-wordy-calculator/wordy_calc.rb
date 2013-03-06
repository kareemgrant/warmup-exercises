class Calculator

  def initialize

  end

  def ask(question)
    parts = question.split(" ")

    num1 = parts[2].to_s.to_i
    num2 = parts[4].to_s.to_i
    num3 = parts[6].to_s.to_i

    add(num1, num2, num3)
  end

  def add(num1, num2, num3)
    num1 + num2 + num3
  end

end

# @calculator = Calculator.new
# @calculator.ask('What is 1 plus 1?')
# @calculator.ask('What is 1 plus 2?')
# @calculator.ask('What is 123 plus 45678?')
# @calculator.ask('What is -1 plus -10?')
