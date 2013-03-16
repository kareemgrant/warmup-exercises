#puts "Say something to Grandma"

#count = 0
#while true
  #input = gets.chomp

  #if input == 'BYE'
    #puts "Bye sonny!"
  #else
    #count = 0
    #puts "NO, NOT SINCE #{rand(1930..1950)}"
  #end
#end

class Grandma
  def self.response_to(comment)
    
    if comment == comment.upcase 
      puts "NOT, NOT SINCE #{rand(1930..1950)}!"
    else
      puts "HUH?! SPEAK UP, SONNY!"
    end
  end
end

bye_count = 0
while(comment = gets.chomp) do 
  comment == "BYE" ? bye_count += 1 : bye_count = 0  
  break if bye_count == 3
  Grandma.response_to(comment)
end
