def halvsies(array)
  dividing_point = array.size/2
  if array.size.even?
    array.partition {|x| array.index(x) < dividing_point}
  else
    array.partition {|x| array.index(x) <= dividing_point}
  end
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]


def halvsies_with_slice(array)
  middle = (array.size/2.0).round
  first_half = array.slice(0..(middle-1))
  second_half = array.slice(middle..-1)
  [first_half, second_half]
end

p halvsies_with_slice([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies_with_slice([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies_with_slice([5]) == [[5], []]
p halvsies_with_slice([]) == [[], []]
