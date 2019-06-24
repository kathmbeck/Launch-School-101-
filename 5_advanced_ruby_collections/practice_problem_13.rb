arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]


[[1, 8, 3], [1, 6, 7], [1, 4, 9]]


result = arr.sort_by do |subarr|
  subarr.select do |number|
    number.odd?
  end
end

p result

