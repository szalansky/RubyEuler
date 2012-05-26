# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
 # we can see that the 6th prime is 13.
# 
# What is the 10001st prime number?

i = 2
n = 0
loop do
  n += 1 if (2 .. Math.sqrt(i).floor).all? { |el| i % el != 0 }
  break if n == 10001
  i += 1
end

puts i
