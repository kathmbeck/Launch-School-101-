def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number:")
num1 = gets.chomp.to_f

prompt("Enter the second number:")
num2 = gets.chomp.to_f

sum = num1 + num2
difference = num1 - num2
product = num1 * num2

quotient = num2 == 0 ? "Undefined" : num1 / num2
remainder = num2 == 0 ? "Undefined" : num1 % num2

power = num1 ** num2


prompt "#{num1} + #{num2} = #{sum}"
prompt "#{num1} - #{num2} = #{difference}"
prompt "#{num1} * #{num2} = #{product}"
prompt "#{num1} / #{num2} = #{quotient}"
prompt "#{num1} % #{num2} = #{remainder}"
prompt "#{num1} ** #{num2} = #{power}"
