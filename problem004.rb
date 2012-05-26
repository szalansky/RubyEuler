# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 * 99.
# Find the largest palindrome made from the product of two 3-digit numbers (multiplication).

result = 0

def palindrome?(n)
  n, flag = n.to_s, true
  (0 .. (n.length/2 - 1)).each do |i|
    flag = false if n[i] != n[n.length - 1 - i]
  end
  flag
end

for i in 100 .. 999
  for j in 100 .. 999
    if palindrome?(i * j)
      result = i * j if i * j > result
    end
  end
end

puts result
