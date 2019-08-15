def sum_square_difference(num)
  square_of_sum = (1..num).reduce(:+) ** 2
  sum_of_squares = (1..num).map { |num| num ** 2 }.reduce(:+)
  square_of_sum - sum_of_squares
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150