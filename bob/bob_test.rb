require 'minitest/autorun'
require_relative 'bob.rb'

class BobTest < MiniTest::Unit::TestCase
  def setup
    @bob = Bob
  end

  def test_shout_at_bob
    assert_equal 'Woah, chill out!', @bob.response('HEY')
  end

  def test_ask_bob_a_question
   assert_equal 'Sure.', @bob.response('Are you hungry?')
  end

  def test_tell_bob_something
   assert_equal 'Whatever.', @bob.response('Go to hell Bob.')
  end

  def test_stare_at_bob
   assert_equal 'Fine. Be that way!', @bob.response('')
  end
end