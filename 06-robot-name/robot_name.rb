class Robot

  attr_reader :name

  def initialize
    @name = generate_name
  end

  def generate_name
    letters = Array.new(2) { (rand(122-97) + 97).chr }.join
    numbers = rand(100..999).to_s

    letters.upcase + numbers
  end

  def reset
    @name = " "
    @name = generate_name
  end



end

puts "Robot 1: "
robot1 = Robot.new
puts robot1.name
puts robot1.name
puts robot1.name

puts " "
puts "Robot 2: "
robot2 = Robot.new
puts robot2.name
puts robot2.name
puts robot2.name

puts ""
puts "Robot 3: "
robot3 = Robot.new
puts robot3.name
puts robot3.name

puts ""
puts "Resetting to factory settings."
robot3.reset
puts robot3.name
puts robot3.name