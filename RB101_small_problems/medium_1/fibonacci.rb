def fibonacci(num)
  return 1 if num <= 2
  fibonacci(num -1) + fibonacci(num-2)
end


p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765



def fibonacci_procedural(num)
  array = [1, 1]
  return 1 if num <= 2
  3.upto(num) do |num|
    array << array[num-3] + array[num-2]
  end
  array[num - 1]
end

p fibonacci_procedural(20) == 6765
p fibonacci_procedural(100) == 354224848179261915075


def fib_pro_solution(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end
  last
end

def fibonacci_last(nth)
  fib_pro_solution(nth).to_s[-1].to_i
end

fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4