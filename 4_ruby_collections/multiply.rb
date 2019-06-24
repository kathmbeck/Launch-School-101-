def multiply_numbers(numbers, factor)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size
    multiplied_numbers << numbers[counter] * factor
    counter += 1
  end

  multiplied_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply_numbers(my_numbers, 3)
p multiply_numbers(my_numbers, 5)
p multiply_numbers(my_numbers, 10)