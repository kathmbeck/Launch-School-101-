def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64

def power_of_n (num, power)
  result = 1
  power.times {result = multiply(num,result)}
  result
end

puts power_of_n(3, 3) == 27
puts power_of_n(2, 8) == 256

# Loop
def power_loop(num, exp)
  if exp == 1
    return num
  else
    running_product = multiply(num,num)
    counter = 2
    loop do
      break if counter == exp
      running_product = multiply(running_product, num)
      counter += 1
    end
    running_product
  end
end

p power_loop(5,3) == 125
p power_loop(8,2) == 64
p power_loop(-15,5) == -759375

#Using Times Method
def power_times(num, exp)
  result = 1
  exp.times do
    result = multiply(result, num)
  end
  result
end

p power_times(5,3) == 125
p power_times(8,2) == 64
p power_times(-15,5) == -759375
