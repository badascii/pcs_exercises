class Nucleotide

  attr_accessor :dna

  def initialize(dna)
    @dna = dna
  end

  def count(dna_count)
    /[TGAC]/
  end

end