def sum_of_sums(array)
  sum = 0
  loop do
    sum += array.reduce(:+)
    array.pop
    break if array.empty?
  end
  sum
end

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35

#Solutions

def sum_of_sums_2(numbers)
  sum_total = 0
  accumulator = 0
  numbers.each do |num|
    accumulator += num
    sum_total += accumulator
  end
  sum_total
end

def sum_of_sums_3(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0,count).reduce(:+)
  end
  sum_total
end
