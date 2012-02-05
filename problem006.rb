# Find the difference between the sum of the squares
 # of the first one hundred natural numbers and the square of the sum.
 
def sumOfSquares(range)
  result = 1
  for number in 2 .. range
    result += number**2
  end
  result
end

def squareOfSum(range)
  result = 1
  for number in 2 .. range
    result += number
  end
  result**2
end

puts squareOfSum(100) - sumOfSquares(100)
