#A palindromic number reads the same both ways.
#The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 * 99.
#Find the largest palindrome made from the product of two 3-digit numbers (multiplication).

result = 0

def isPalindrome(n)
  flag = true
  n = n.to_s
  0.upto(n.length/2) do |i|
    if n[i] != n[n.length - 1 - i]
      flag = false
      break
    end
  end
  flag
end

for i in 100 .. 999
  for j in 100 .. 999
    if isPalindrome(i * j)
      result = i * j if i * j > result
    end
  end
end

puts result
