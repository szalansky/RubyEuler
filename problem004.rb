# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 * 99.
# Find the largest palindrome made from the product of two 3-digit numbers (multiplication).
 
result = 0
 
def palindrome?(n)
  n = n.to_s
  (0 .. (n.length/2 - 1)).each do |i|
    return false if n[i] != n[n.length - 1 - i]
  end
  true
end
 
for i in 100 .. 999
  for j in 100 .. i
    if palindrome?(i * j)
      result = i * j if i * j > result
    end
  end
end
 
puts result