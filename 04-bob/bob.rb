class Bob
<<<<<<< HEAD

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
=======
  def chat(input)
    puts response_for(input)
  end

  def response_for(input)
    if shouting?(input)
      'Woah, chill out!'
    elsif question?(input)
      'Sure.'
    elsif statement?(input)
      'Whatever.'
    else
      'Fine, be that way.'
    end
  end

  def statement?(input)
    input.length > 0
  end

  def question?(input)
    input.end_with?("?")
  end

  def shouting?(input)
    !input.empty? && input == input.upcase
  end
end

puts "Hey bro, wassup?"
bob = Bob.new
while true
  input = gets.chomp.strip
  bob.chat(input)
end
>>>>>>> 7f90f1f2156bc6c56cb22ffba06880fe796a28ed
