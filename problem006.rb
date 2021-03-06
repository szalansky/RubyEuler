# Find the difference between the sum of the squares
 # of the first one hundred natural numbers and the square of the sum.
 
def sum_of_squares(range)
  result = 1
  for number in 2 .. range
    result += number**2
  end
  result
end

def square_of_sum(range)
  result = 1
  for number in 2 .. range
    result += number
  end
  result**2
end

puts square_of_sum(100) - sum_of_squares(100)
