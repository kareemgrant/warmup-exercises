class Scrabble
<<<<<<< HEAD

  VALUES = {
      1 => %w(a e i o u l n r s t),
      2 => %w(d g),
      3 => %w(b c m p),
      4 => %w(f h v w y),
      5 => %w(k),
      8 => %w(j x),
      10 => %w(q z),
    }

  def self.score(word)
    letters = word.split("")
    scores = letters.collect{|letter| lookup(letter)}

    #puts scores.inspect
    scores.inject(0){|sum, value| sum + value}
  end

  def self.lookup(letter)
    VALUES.each do |key, values|
      return key if values.include?(letter)
    end
  end


end

puts Scrabble.score("kareem")
=======
  VALUES = { 
      "A, E, I, O, U, L, N, R, S, T" => 1,
      "D, G" => 2,
      "B, C, M, P" => 3,
      "F, H, V, W, Y" => 4,
      "K" => 5,
      "J, X" => 8,
      "Q, Z" => 10
  }

  def self.score(input)
    input.upcase.split("").map{|letter| lookup(letter)}.inject(0, :+)
  end

  def self.lookup(letter)
    VALUES.find{|key, value| key.include?(letter)}[1]
  end
end
>>>>>>> 7f90f1f2156bc6c56cb22ffba06880fe796a28ed
