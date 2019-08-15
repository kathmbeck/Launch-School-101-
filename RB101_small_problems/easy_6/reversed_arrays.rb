def reverse!(arr)
  first = 0
  last = arr.size - 1
  loop do
    break if first >= last
    arr[first], arr[last] = arr[last], arr[first]
    first += 1
    last -= 1
  end
  arr
end

#ALT SOLUTION

def reverse_alt!(arr)
  arr.each do |element|
    arr.delete(element)
    arr.unshift(element)
    arr
  end
end


list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []

# input: array
# output mutated array(same object)
# rule: revese elements
# data structure: array
# algorithim:
# create method reverse! with parameter array

# return mutated array

# PART TWO

def reverse(arr)
  new_arr = []
  return [] if arr.empty?
  idx = arr.size - 1
  loop do
    new_arr << arr[idx]
    idx -= 1
    break if idx < 0
  end
  new_arr
end

def reverse_alt(arr)
  arr.each_with_object([]) do |element, new_arr|
    new_arr.unshift(element)
  end
end

def reverse_alt_2(arr)
  arr.inject([]) {|new_arr, element| new_arr.unshift(element)}
end


p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true


p reverse_alt([1,2,3,4]) == [4,3,2,1]          # => true
p reverse_alt(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse_alt(['abc']) == ['abc']              # => true
p reverse_alt([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse_alt(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

p reverse_alt_2([1,2,3,4]) == [4,3,2,1]          # => true
p reverse_alt_2(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse_alt_2(['abc']) == ['abc']              # => true
p reverse_alt_2([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse_alt_2(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true


