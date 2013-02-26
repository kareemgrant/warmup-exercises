require "date"


def age_in_years(birthday, current_date)
  age = current_date.year - birthday.year
end

def birthday_today?(birthday)
  if Date.today == birthday
    reponse = "Today is your birthday?"
  else
    response = "Today is not your birthday"
  end

  response
end

puts "What is your year of birth?"
year = gets.chomp.to_i

puts "What month were you born in?"
month = gets.chomp.to_i

puts "What day were you born on?"
day = gets.chomp.to_i

birthday = Date.new(year, month, day)

age = age_in_years(birthday, Date.today)


puts "you were born on "  + birthday.strftime("%m/%d/%Y")


puts birthday_today?(birthday)

