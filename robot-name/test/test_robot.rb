require 'minitest/autorun'
require_relative '../lib/robot.rb'

class RobotTest < MiniTest::Unit::TestCase
  def setup
    @robot = Robot.new
  end

  def test_robot_has_name
    assert @robot.name
  end

  def test_name_reset
    old_name = @robot.name
    new_name = @robot.new_name
    assert_equal old_name, @robot.name
  end
end