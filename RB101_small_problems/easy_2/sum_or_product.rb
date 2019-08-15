def prompt(string)
  puts ">>" + string
end

def valid_integer?(integer)
  integer.to_i.to_s == integer && integer.to_i > 0
end

def valid_operation?(operation)
  operation == 's' || operation == 'p'
end

def compute_sum(integer)
  (1..integer.to_i).reduce(:+)
end

def compute_product(integer)
  (1..integer.to_i).reduce(:*)
end

integer = 0
loop do
  prompt("Please enter an integer greater than 0:")
  integer = gets.chomp
  break if valid_integer?(integer)
end

operation = ''
loop do
  prompt("Enter 's' to compute the sum, 'p' to compute the product.")
  operation = gets.chomp.downcase
  break if valid_operation?(operation)
end


if operation == 's'
  sum = compute_sum(integer)
  prompt("The sum of the integers between 1 and #{integer} is #{sum}.")
else operation == 'p'
  product = compute_product(integer)
 prompt("The product of the integers between 1 and #{integer} is #{product}.")
end

