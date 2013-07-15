class Nucleotide

  attr_accessor :dna

  def initialize(dna)
    @dna = dna
  end

  def count(letter)

    letter_counter = 0

    self.dna.each_char do |char|
      if char == letter
        letter_counter += 1
      end
    end
    return letter_counter
  end

  def nucleotide_counts

    letter_hash = { A: 0, C: 0, G: 0, T: 0 }

    self.dna.each_char do |char|
      case char
        when "A"
          letter_hash[:A] += 1
        when "C"
          letter_hash[:C] += 1
        when "G"
          letter_hash[:G] += 1
        when "T"
          letter_hash[:T] += 1
      end
    end
    return letter_hash
  end
end

dna = Nucleotide.new("AGCTTCTAGGTC")

puts dna.nucleotide_counts