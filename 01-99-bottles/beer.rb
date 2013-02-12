class Beer

  # def initialize(count)
  #   @count = count
  # end

  def self.song
    count = 99
    while count > 1
      puts "#{count} bottles of beer on the wall, #{count} bottles of beer."

      if count == 2
        puts "Take one down and pass it around, #{count - 1} bottle of beer on the wall."
      else
        puts "Take one down and pass it around, #{count - 1} bottles of beer on the wall."
      end

      puts ""
      count -= 1
    end

    puts "1 bottle of beer on the wall, 1 bottle of beer."
    puts "Take it down and pass it around, no more bottles of beer on the wall."

    puts ""

    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, 99 bottles of beer on the wall."
  end

end

#Beer.new(99).song
Beer.song

# class Fixnum
#   def bottles_of_beer
#     puts "song"
#   end
# end




#beer_song(99)