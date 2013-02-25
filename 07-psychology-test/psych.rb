require 'highline/import'

# class Question

#   def



# end

# loves = ask "What do you love?"

# feeling = ask "How are you today?" do |q|
#   q.default = "good"
# end

# wants_candy = ask "Do you want <%= color('candy',RED) %>?" do |q|
#   q.validate = /^(yes|no)$/
# end

# say "Your favorite color is <%= color('blue',BLUE) %>"

#ask(“Company? “) { |q| q.default = “none” }


 #  ask("Age?  ", Integer) { |q| q.in = 0..105 }
 #  ask("Name?  (last, first)  ")
 # { |q| q.validate = /\A\w+, ?\w+\Z/ }

# loves = ask("What do you love?  ") #{ |q| q.echo = true }
# #password = ask("Enter your password:  ") { |q| q.echo = "*" }

# puts "You answered #{loves}"

# feeling = ask "How are you today?" do |q|
#   q.default = "good"
# end

input = ""
while input != "q"
      printf "enter command: "

      input = gets.chomp
      # parts = input.split(" ")

      # command = parts[0]

      # case command
      #   when 'q' then puts "Goodbye!"
      #   when 't' then tweet(parts[1..-1].join(" "))
      #   when 'dm' then dm(parts[1], parts[2..-1].join(" ")) 
      #   when 'spam' then spam_my_friends(parts[1..-1].join(" "))
      #   when 'elt' then everyones_last_tweet
      #   when 's' then shorten(parts[1..-1].join(" "))
      #   when 'turl' then tweet(parts[1..-2].join(" ") + " " + shorten(parts[-1]))
      #   else puts "Sorry I don't know how to #{command}"
      # end
  end


input = gets.chomp

# while input != answer
  puts "Ask your question"
  answer = ask("Name?  (last, first)")

  puts answer

  # break if input == answer

# end

