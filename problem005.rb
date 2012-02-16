#2520 is the smallest number that can be divided
# by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number
# that is evenly divisible by all of the numbers from 1 to 20?

load "ArrayUtils.rb"

$base_numbers = [2, 3, 5, 7, 11, 13, 17, 19]
$result_map = Array.new($base_numbers.length, "1").to_h($base_numbers)

def result(number, prime_numbers, result)
  prime_numbers.each do |d|
    n = number
    counter = 0
    while n % d == 0 && n > 1
      n /= d
      counter += 1
    end
    if counter > $result_map[d].to_i then $result_map[d] = counter end
  end
end

11.upto(20) do |i|
  result(i, $base_numbers, $result_map)
end

result = 1

$result_map.each_key do |key|
  exponent = $result_map[key].to_i
  result *= key**exponent
end

puts result
#232792560