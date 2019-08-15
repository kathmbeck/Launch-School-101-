def include?(array, value)
  array.each {|element| return true if element == value}
  false
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false


# OTHER SOLUTIONS

def alt_include?(arr, value)
  arr.delete(value) != arr
end

def alt2_include?(array, value)
  !!array.find_index(value)
end

def alt2_include?(array, value)
  array.count(value) > 0
end