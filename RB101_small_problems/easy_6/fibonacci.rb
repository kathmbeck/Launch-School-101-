def find_fibonacci_index_by_length(digits)
  fibonacci = [1, 1]
  current_number = 0
  idx = 0
  loop do
    current_number = fibonacci[idx] + fibonacci[idx + 1]
    fibonacci << current_number
    return fibonacci.size if current_number.to_s.length >= digits
    idx += 1
  end
end




puts find_fibonacci_index_by_length(2) == 7
puts find_fibonacci_index_by_length(3) == 12
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847


#Notes

# input = integer representing digit length
# output = integer representing index
# Rules: Fibonacci numbers are a series of numbers
# where each number is the sum of the previous two numbers.
# first Fibonnaci number has index of 1 (versus 0)
# argument is always greater than or equal to 2

# Data structure: loop with formula that iterates through series until
# the digit length is found

# Algorithim
# define a method that takes parameter integer
# create fibonnaci array containing [1, 1]
# create loop, adding numbers to array based on fibonacci rule
#   break loop when length of current number equals argument
#   return index of current number plus 1


def fibonacci_alt(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first,second = second, fibonacci
  end

  index
end

puts fibonacci_alt(2) == 7
puts fibonacci_alt(3) == 12
puts fibonacci_alt(10) == 45
puts fibonacci_alt(100) == 476
puts fibonacci_alt(1000) == 4782
puts fibonacci_alt(10000) == 47847

