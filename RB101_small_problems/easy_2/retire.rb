

puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

current_year = Time.now.year
retirement_year = current_year + retire_age
years_to_go = retire_age - current_age

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_go} to go!"
