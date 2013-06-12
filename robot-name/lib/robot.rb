class Robot
  attr_accessor :name

  def initialize
    @name = Robot.random_name_generator
  end

  def self.random_name_generator
    prefix = %w{ RN WX ZM VL XT QQ BZ }
    suffix = %w{ 559 104 291 740 012 909 }
    prefix + suffix
  end

  def random_a_name
    seed = rand(5)
    Robot.random_name_generator
  end

  def new_name
    @name = random_a_name
  end

end