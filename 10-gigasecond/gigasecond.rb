require 'time'

birthdate = [1977, 06, 17]

BILLION = 1000000000.00
EARTH_SECONDS = 31557600.00


# breaks out the array into 3 args required by datetime
birthdate = Time.new(*birthdate)

birth_in_seconds = birthdate.to_time.to_i

puts birth_in_seconds

# today_in_seconds = Date.today.to_time.to_i

# age_in_seconds = today_in_seconds - birth_in_seconds

# seconds_ago =  age_in_seconds  - BILLION

# years_ago =  (seconds_ago / EARTH_SECONDS)

# puts Date.today - seconds_ago

