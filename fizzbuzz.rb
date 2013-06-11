def fizzbuzz(start=1, finish=100)
  output = []
  fizz = "Fizz"
  buzz = "Buzz"
  range = (start..finish).to_a

  range.each do |int|
    output << fizz+buzz if (int % 15).zero?
    output << fizz elsif (int % 3).zero?
    output << buzz elsif (int % 5).zero?
  end
end

fizzbuzz