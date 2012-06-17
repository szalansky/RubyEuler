#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

# a + b + c = 1000
# c = 1000-a-b
# c^2 = (1000-a-b)^2
# a^2 + b^2 = 1000000 - 2000(a+b) + 2ab + a^2 + b^2
# 0 = 1000000 - 2000(a+b) + 2ab
# 1000(a+b) - ab = 500000
# 1000a + 1000b - ab = 500000
# a(1000-b) = 500000 - 1000b
# a = (500000-1000b)/(1000-b)

a = 0
b = 0
c = 0

(1 ... 500).each do |i|
  a = (500000-1000*i)/(1000-i)
  b = i
  c = 1000 - a - b
  break if a**2 + b**2 == c**2
end

puts "a = #{a}, b = #{b}, c = #{c}; abc = #{a*b*c}"
