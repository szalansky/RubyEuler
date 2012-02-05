#2520 is the smallest number that can be divided
# by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number
# that is evenly divisible by all of the numbers from 1 to 20?

load "ArrayUtils.rb"

$baseNumbers = [2, 3, 5, 7, 11, 13, 17, 19]
$resultMap = Array.new($baseNumbers.length, "1").to_h($baseNumbers)

def result(number, primeNumbers, result)
  primeNumbers.each do |d|
    n = number
    counter = 0
    while n % d == 0 && n > 1
      n /= d
      counter += 1
    end
    if counter > $resultMap[d].to_i then $resultMap[d] = counter end
  end
end

11.upto(20) do |i|
  result(i, $baseNumbers, $resultMap)
end

result = 1

$resultMap.each_key do |key|
  exponent = $resultMap[key].to_i
  result *= key**exponent
end

puts result
#232792560