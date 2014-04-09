def sum_with_while(min,max)
  sum = 0
  i = min
  while i <= max
    sum = sum + i
    i += 1
  end
  sum
end

def sum_with_for(min,max)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a for..end structure
  sum = 0
  for i in min..max do
    sum = sum + i
  end
  sum
end

def sum_recursive(min,max)
  #TODO (optional): return the sum of the integers between min and max
  #CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
 max < min

  else
  unless min == max
    min + sum_recursive(min + 1, max)
  else
    min
  end
end
end

p sum_recursive(1, 100)











