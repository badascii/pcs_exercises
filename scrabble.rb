class Scrabble

  # Defines a hash that holds Scrabble letter values
  def self.letter_values
    values_hash = {}
    all_letters = [[ 1, 'a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'],
                   [2, 'd', 'g'], [3, 'b', 'c', 'm', 'p'],
                   [4, 'f', 'h', 'v', 'w', 'y'], [5, 'k'],
                   [8, 'j', 'x'], [10, 'q', 'z']]

    all_letters.each do |group|
      value = group.shift
      group.each do |letter|
        values_hash[letter] = [value]
      end
    end
    puts values_hash
  end

def self.score(word)
  word_bonus()
end

def word_bonus(bonus)
end
end

puts Scrabble.letter_values

# puts Scrabble.score("mississippi", { :double => ["i", "s"], :triple = ["m"]}, :triple)
# puts Scrabble.score("apple")
# puts Scrabble.score("quote")
# puts Scrabble.score("zebra")
# puts Scrabble.score("xylophone")