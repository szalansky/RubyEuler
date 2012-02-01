#Each new term in the Fibonacci sequence is generated by adding the previous two terms.
#By starting with 1 and 2, the first 10 terms will be:
#  1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#By considering the terms in the Fibonacci sequence whose values do not exceed four million,
# find the sum of the even-valued terms.

def fib(n)
  a, b = 0, 1;
  for i in (1 .. n)
    a, b = b, a + b
  end
  a
end

result = 0
for i in (1 .. 1.0/0 )
  val = fib(i)
  if val >= 4000000
    puts result
    break
  elsif val % 2 == 0
    result += val
  end
end
