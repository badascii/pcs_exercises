require 'minitest/autorun'
require_relative 'grandma'

class GrandmaTest < MiniTest::Unit::TestCase

  def setup
  end

  def test_year_array
    assert (0..20).to_a.include?(Grandma.random_year)
  end

  def test_grandma_hears
    assert_equal Grandma.conversation("HEY LISTEN"), "NO, NOT SINCE #{Grandma.random_year}"

  end

  def test_grandma_cannot_hear
    assert_equal Grandma.conversation("Hey hey hey"), "HUH?!  SPEAK UP, SONNY!"
  end

  def test_grandma_reply_year
  end

  def test_say_bye_to_grandma
  end

end