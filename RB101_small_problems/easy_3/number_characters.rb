puts "Please write word or multiple words:"
input = gets.chomp

number = input.delete(' ').length

puts "There are #{number} characters in \'#{input}'\."

