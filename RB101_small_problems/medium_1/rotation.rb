def rotate_array(array)
  array[1..-1] + [array[0]]
end

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true

def rotate_string(string)
  rotate_array(string.chars).join
end

def rotate_integer(integer)
  rotate_array(integer.to_s.chars).join.to_i
end

def rotate(object)
  return rotate_array(object) if object.class == Array
  return rotate_string(object) if object.class == String
  return rotate_integer(object) if object.class == Fixnum
end

p rotate([1,2,3,4]) == [2, 3, 4, 1]
p rotate("1234") == '2341'
p rotate(1234) == 2341