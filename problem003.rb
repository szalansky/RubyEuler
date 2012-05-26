#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?


n = 600851475143
prime_factor = 1

2.upto(Math.sqrt(n)) do |i|
  prime_factor = i if n % i == 0
  n /= i while n % i == 0
  break if n == 1
end

puts prime_factor
