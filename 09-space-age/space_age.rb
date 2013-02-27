require 'date'

#ARGV - takes parameters from call to ruby file

# puts "What are you? #{}"
# birthdate = ARGV.map{|arg| arg.to_i}

birthdate = [1977, 06, 17]

# breaks out the array into 3 args required by datetime
date = Date.new(*birthdate)

birth_in_seconds = date.to_time.to_i

today_in_seconds = Date.today.to_time.to_i

age_in_seconds = today_in_seconds - birth_in_seconds

earth_age = age_in_seconds / 31557600
mercury_age = age_in_seconds / (31557600 * 0.2408467)

puts "age in seconds: #{age_in_seconds}"
puts "Earth age: #{earth_age}"
puts "Mercury age: #{mercury_age}"