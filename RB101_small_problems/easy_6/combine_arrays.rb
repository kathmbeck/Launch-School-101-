def merge(arr_1, arr_2)
  arr_1.push(arr_2).flatten.uniq
end

def merge_solution(array_1, array_2)
  array_1 | array_2
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
puts merge_solution([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
