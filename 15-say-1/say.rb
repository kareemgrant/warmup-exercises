class Say
  def initialize(number)
    left = number
    tens = left/10

    num_string = ''

    case tens
    when 9
      num_string += "ninety"
    when 8
      num_string += "eighty"
    when 7
      num_string += "seventy"
    when 6
      num_string += "sixty"
    when 5
      num_string += "fifty"
    when 4
      num_string += "forty"
    when 3
      num_string += "thirty"
    when 2
      num_string += "twenty"
    else
      num_string += "ninety"
    end

    left = left - (tens * 10)

    ones = left

    puts ones

    #puts num_string

    case ones
    when 1
      num_string += "one"
    when 2
      num_string += "two"
    when 3
      puts "in here"
      num_string += "three"
    when 4
      num_string += "four"
    when 5
      num_string += "five"
    when 6
      num_string += "six"
    when 7
      num_string += "seven"
    when 8
      num_string += "eight"
    when 9
      num_string += "nine"
    else
      num_string += " "
    end

    puts num_string

  end


end

Say.new(93)
Say.new(23)
