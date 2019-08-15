def running_total_my_solution(array)
  return array if array.size == 0 || array.size == 1
  running_total_array = [array[0], array[0] + array[1]]
  counter = 1
  loop do
    running_total_array << (running_total_array[counter] + array[counter + 1])
    break if array.size == running_total_array.size
    counter += 1
  end
  running_total_array
end

def running_total(array)
  total = 0
  array.map {|integer| total += integer}
end

# solve with inject

def running_total_inject(array)
  total_array = []
  array.inject(0) do |sum, n|
    total_array << (sum + n)
    sum + n
  end
  total_array
end

def running_total_ewo(array)
  current_total = 0
  array.each_with_object([]) do |n, total_array|
    total_array << (current_total += n)
    total_array
  end
end


puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

puts running_total_inject([2, 5, 13]) == [2, 7, 20]
puts running_total_inject([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total_inject([3]) == [3]
puts running_total_inject([]) == []

puts running_total_ewo([2, 5, 13]) == [2, 7, 20]
puts running_total_ewo([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total_ewo([3]) == [3]
puts running_total_ewo([]) == []



# Problem
#   take a running total of a set of numbers within an array for each consecutive element
#   all positive integers
#   consider result if array is empty or only contains one integer

# Input: array of integers
# Output: array of integers(new object, same length)

# Data Structure/Algorthim

# write a method called running_total that takes an array of positive integers.
# initialize an empty array called running total
# loop over the origianl array to fill the  new array with the running total for each element of the original array
# return new array (running total)


