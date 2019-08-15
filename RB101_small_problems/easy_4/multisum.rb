
def multisum(integer)
  range = 1.upto(integer).to_a
  range.select {|num| num % 3 == 0 || num % 5 == 0 }.reduce(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168


# Question/Edge Cases
# question: what is the sum of all multiples of 3 and 5 between 1 and some number
# return new object integer
# can assume argument will be an integer greater than 1

# inputs: integer > 1
# outputs: integer

# data structure
#  integer --> an array of integers between 1 and number --> integer
#   select multiples of 3 and 5 and sum together

# Algorthim
#   create method called multisum that takes an integer
#   create a new array that includes all numbers between 1 and integer
#   iterate through array and select for multiples of 3 or 5
#   reduce array to sum and return result

