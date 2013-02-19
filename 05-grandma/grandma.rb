puts "Say something to Grandma"

count = 0
while true
  input = gets.chomp

  if input == 'BYE'
    puts "Bye sonny!"
  else
    count = 0
    puts "NO, NOT SINCE #{rand(1930..1950)}"
  end
end
