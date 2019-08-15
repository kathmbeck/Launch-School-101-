def prompt(message)
  puts "==> #{message}"
end

array_of_numbers = []

prompt("Enter the 1st number:")
array_of_numbers << gets.chomp.to_i

prompt("Enter the 2nd number:")
array_of_numbers << gets.chomp.to_i

prompt("Enter the 3rd number:")
array_of_numbers << gets.chomp.to_i

prompt("Enter the 4th number:")
array_of_numbers << gets.chomp.to_i

prompt("Enter the 5th number:")
array_of_numbers << gets.chomp.to_i

prompt("Enter the last number:")
last_number = gets.chomp.to_i

if array_of_numbers.include?(last_number)
  puts "The number #{last_number} appears in #{array_of_numbers}."
else
  puts "The number #{last_number} does not appear in #{array_of_numbers}."
end


# Refactored Solution

numbers = []

%w(first second third fourth fifth).each do |ordinal|
  puts "==> Enter the #{ordinal} number:"
  numbers << gets.chomp
end

puts "Enter the last number:"
last = gets.chomp

may_appear = numbers.include?(last) ? 'appears' : "does not appear"

puts "The number #{last} #{may_appear} in #{numbers}."


