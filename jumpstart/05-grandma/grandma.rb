class Grandma

  def conversation(input)
    until input == "BYE"
      (input == input.upcase)? Grandma.hears : Grandma.cannot_hear)
    end
  end

  def self.random_year
    year_range = (1930..1950).to_a
    random_year = rand(19)
    year_range[random_year]
  end

  def self.hears(input)
    "NO, NOT SINCE #{Grandma.random_year}"
  end

  def self.cannot_hear(input)
    "HUH?!  SPEAK UP, SONNY!"
  end

 # until response == "BYE"

end
