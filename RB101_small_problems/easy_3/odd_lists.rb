def oddities(arr)
  odd_list = []
  arr.each_with_index { |num, idx| odd_list << num if idx.even? }
  odd_list
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []


# Further Exploration
def even_stevens(arr)
  even_list = []
  arr.each_with_index { |num, idx| even_list << num if idx.odd? }
  even_list
end

p even_stevens([2, 3, 4, 5, 6]) == [3, 5]
p even_stevens(['abc', 'def']) == ['def']


#Two Additional Ways to Solve

def oddities_alt(arr)
  return [] if arr.empty?
  odd_list = []
  counter = 0
  loop do
    odd_list << arr[counter]
    counter += 2
    break if counter >= arr.size
  end
  odd_list
end

p oddities_alt([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities_alt([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities_alt(['abc', 'def']) == ['abc']
p oddities_alt([123]) == [123]
p oddities_alt([]) == []

def oddities_alt_2(arr)
  odd_list = []
  while !arr.empty?
    odd_list << arr.shift
    arr.shift
  end
  odd_list
end

p oddities_alt_2([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities_alt_2([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities_alt_2(['abc', 'def']) == ['abc']
p oddities_alt_2([123]) == [123]
p oddities_alt_2([]) == []

# Both evens and odd simultaneously

def oddities_solution(array)
  array.partition.each_with_index {|element, index| index.even?}
end

odd_elements, even_elements = oddities_solution([2, 3, 4, 5, 6])
#odd_elements ==> [2,4,6]
#even_elements ==> [3,5]


