def multiply_list(array_1, array_2)
  product = []
  array_1.each_with_index do |number, index|
    product << number * array_2[index]
  end
  product
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

def multiply_list_2(array_1, array_2)
  array_1.zip(array_2).map {|arr| arr.reduce(:*) }
end

puts multiply_list_2([3, 5, 7], [9, 10, 11]) == [27, 50, 77]