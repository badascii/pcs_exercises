require 'minitest/autorun'
require_relative '../lib/nucleotide'

class NucleotideTest < MiniTest::Unit::TestCase

  def setup
    @nucleotide = Nucleotide.new('TGAGCAT')
  end

  def test_if_nucleotide_spawns
    assert_equal false, @nucleotide.nil?
  end

  def test_if_dna_is_attribute
    assert_equal false,  @nucleotide.instance_variables.nil?
  end

  def test_if_count_is_a_method
    assert_equal true, @nucleotide.methods.include?(:count)
  end

  def test_if_count_counts
    assert_equal 2, @nucleotide.count('A')
  end
end