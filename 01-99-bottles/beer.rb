class Beer

  # def initialize(count)
  #   @count = count
  # end

  def self.song
    count = 99
    while count > 1
      main_lyric(count)
      count == 2 ? modified_hook(count) : hook(count) 

      puts ""
      count -= 1
    end
    
    finale
  end

  def self.main_lyric(count)
    puts "#{count} bottles of beer on the wall, #{count} bottles of beer."
  end

  def self.hook(count)
    puts "Take one down and pass it around, #{count - 1} bottles of beer on the wall."
  end

  def self.modified_hook(count)
    puts "Take one down and pass it around, #{count - 1} bottle of beer on the wall."
  end

  def self.finale
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
