class Bob

  def self.run
    loop do
      printf "Say something to Bob: "
      input = gets.chomp

      if input.split(" ")[0].downcase == "bro"
        puts "do something with bro"
        bro_talk(input.split(" "))
      elsif input.strip != "" && input == input.upcase
        puts "'Woah, chill out!'"
      elsif input.split("").include?("?")
        puts "'Sure.'"
      elsif input.strip == ""
        puts "'Fine. Be that way!'"
      else
        puts 'Whatever.'
      end
    end
  end

  def self.bro_talk(parts)
    puts parts.inspect
  end

end

Bob.run