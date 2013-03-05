class Scrabble

  VALUES = {
    1 => %w(a e i o u l n r s t),
    2 => %w(d g),
    3 => %w(b c m p),
    4 => %w(f h v w y),
    5 => %w(k),
    8 => %w(j x),
    10 => %w(q z),
  }

  def self.score(word, letter_bonus = "", word_bonus = "")

    letters = word.downcase.split("")
    scores = letters.collect{|letter| score_lookup(letter) }

    scores.inject(0){|sum, score| sum += score}
  end

  def self.score_lookup(letter)
    VALUES.each do |score, group|
      return score if group.include?(letter)
    end
  end

end

puts Scrabble.score("kareem", {double: "k"})

#{double: "k"}