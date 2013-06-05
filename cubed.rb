def tail_cubed(int, sum)
  int_cubed = int**3
  sum += int_cubed

  if int < 1
    return sum
  else
    tail_cubed(int-1, sum)
  end
end

def wrapper(int)
  tail_cubed(int, 0)
end

puts wrapper(4)



def cubed(int)
  if int < 1
    return 0
  else
    return int**3 + cubed(int - 1)
  end
end

puts cubed(2)