#example of a singleton method

bob = Object.new

def bob.response_to(comment)
  if comment.empty?
    puts "Fine, be that way."
  elsif comment.upcase == comment
    puts "Woah, chill out!"
  elsif comment.end_with?("?")
    puts "Sure"
  else
    puts "Whatever"
  end
end

bob.response_to ""
bob.response_to "Do you like nachos?"
bob.response_to "Want to go to the movies?"
bob.response_to "Go suck an egg."
bob.response_to "You stink!"
bob.response_to "Want some chocolate?"
bob.response_to "God, this weather is awful."
bob.response_to "Let's go make out behind the gym!"
bob.response_to "THE ZOMBIES ARE COMING!!!11!!"
bob.response_to "This song is soooo good."
bob.response_to "Does this cryogenic chamber make me look fat?"
bob.response_to "WATCH OUT!"
bob.response_to "Tom-ay-to, tom-aaah-to."


