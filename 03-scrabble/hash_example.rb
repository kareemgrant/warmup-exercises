VALUES = { 
      "A, E, I, O, U, L, N, R, S, T" => 1,
      "D, G" => 2,
      "B, C, M, P" => 3,
      "F, H, V, W, Y" => 4,
      "K" => 5,
      "J, X" => 8,
      "Q, Z" => 10 }

def lookup(letter)
   score = VALUES.find{|key, value| key.include?(letter)}
   puts score[1]
   score
end


lookup("B")
