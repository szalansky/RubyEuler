#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#Find the sum of all the primes below two million.

limit = 2000000
sum = 0
i = 2

while i < limit
  sum += i if (2 .. Math.sqrt(i).floor).all? { |el| i % el != 0 }
  i += 1
end

puts sum
