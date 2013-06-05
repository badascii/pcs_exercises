def tail_cubed(int, sum)
  int_cubed = int**3
  sum += int_cubed

  if int < 1
    return sum
  else
    tail_cubed(int-1, sum)
  end
end

def starter(int)
  tail_cubed(int, 0)
end

puts starter(4)

def cubed(int)
  sum = 0
  if int < 1
    return sum
  else
    sum = int**3 + cubed(int - 1)
  end
end

puts cubed(3)