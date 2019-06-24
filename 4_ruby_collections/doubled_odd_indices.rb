def double_odd_indices(numbers)
  index = 0
  doubled_odd_indices = []
  loop do
    break if index == numbers.size
    if index.odd?
      doubled_odd_indices << numbers[index] * 2
    else
      doubled_odd_indices << numbers[index]
    end
    index += 1
  end
  doubled_odd_indices
end


my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_indices(my_numbers)