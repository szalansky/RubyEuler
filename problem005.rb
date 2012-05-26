# 2520 is the smallest number that can be divided
# by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number
# that is evenly divisible by all of the numbers from 1 to 20?

primes_to_exponent = Hash.new
prime_numbers = [2, 3, 5, 7, 11, 13, 17, 19].each do |n|
  primes_to_exponent[n] = 0
end

11.upto(20) do |n|
  prime_numbers.each do |d|
    counter = 0
    while n % d == 0
      n /= d
      counter += 1
    end
    primes_to_exponent[d] = counter if counter > primes_to_exponent[d]
  end
end

result = 1

primes_to_exponent.each_key do |key|
  exponent = primes_to_exponent[key]
  result *= key**exponent
end

puts result
#232792560
