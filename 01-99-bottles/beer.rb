def beer_song(number)
count = number

  while count > 0
    puts "#{count} bottles of beer on the wall, #{count} bottles of beer," 
    puts "Take one down and pass it around, #{count - 1} bottles of beer on the wall."
    puts ""
    count -= 1
  end

end

beer_song(27)