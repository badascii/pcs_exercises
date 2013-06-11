class Year
  def initialize(year)
    @year = year
  end

  def leap?
    leap = false
    if (@year % 4).zero?
      if (@year % 400).zero?
        leap = true
      elsif (@year % 100).zero? && !(@year % 400).zero?
        return leap
      else
        leap = true
      end
    else
      return leap
    end

    return leap
  end
end

class Fixnum
  def self.leap_year?
    Year.new(self).leap?
  end
end

puts 2000.leap_year?